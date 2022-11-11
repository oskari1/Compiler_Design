%{
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }

%}

/* Declare your tokens here. */
%token EOF
%token <int64>  INT
%token NULL
%token <string> STRING
%token <string> IDENT
%token TRUE 
%token FALSE 

%token TINT     /* int */
%token TBOOL    /* bool */
%token TVOID    /* void */
%token TSTRING  /* string */
%token IF       /* if */
%token ELSE     /* else */
%token WHILE    /* while */
%token RETURN   /* return */
%token VAR      /* var */
%token FOR      /* for */
%token SEMI     /* ; */
%token COMMA    /* , */
%token LBRACE   /* { */
%token RBRACE   /* } */
%token PLUS     /* + */
%token DASH     /* - */
%token STAR     /* * */
%token SHL      /* << */
%token SHR      /* >> */
%token SAR      /* >>> */
%token LT       /* < */
%token LE       /* <= */
%token GT       /* > */
%token GE       /* >= */
%token EQEQ     /* == */
%token NEQ      /* != */
%token AND      /* & */
%token OR       /* | */
%token BITAND   /* [&] */
%token BITOR    /* [|] */
%token EQ       /* = */
%token LPAREN   /* ( */
%token RPAREN   /* ) */
%token LBRACKET /* [ */
%token RBRACKET /* ] */
%token TILDE    /* ~ */
%token BANG     /* ! */
%token GLOBAL   /* global */
%token NEW      /* new */ 

%left BITOR
%left BITAND
%left OR
%left AND
%left NEQ EQEQ
%left GE GT LE LT 
%left SAR SHR SHL 
%left PLUS DASH
%left STAR
%nonassoc BANG
%nonassoc TILDE
%nonassoc LBRACKET
%nonassoc LPAREN

/* ---------------------------------------------------------------------- */

%start prog
%start exp_top
%start stmt_top
%type <Ast.exp Ast.node> exp_top
%type <Ast.stmt Ast.node> stmt_top

%type <Ast.prog> prog
%type <Ast.exp Ast.node> exp
%type <Ast.stmt Ast.node> stmt
%type <Ast.block> block
%type <Ast.ty> ty
%%

exp_top:
  | e=exp EOF { e }

stmt_top:
  | s=stmt EOF { s }

prog:
  | p=list(decl) EOF  { p }

decl:
  | GLOBAL name=IDENT EQ init=gexp SEMI
    { Gvdecl (loc $startpos $endpos { name; init }) }
  | frtyp=ret_ty fname=IDENT LPAREN args=arglist RPAREN body=block
    { Gfdecl (loc $startpos $endpos { frtyp; fname; args; body }) }

arglist:
  | l=separated_list(COMMA, pair(ty,IDENT)) { l }
    
ty:
  | TINT   { TInt }
  | r=rtyp { TRef r } 
  | TBOOL  { TBool }

%inline ret_ty:
  | TVOID  { RetVoid }
  | t=ty   { RetVal t }

%inline rtyp:
  | TSTRING { RString }
  | t=ty LBRACKET RBRACKET { RArray t }

%inline bop:
  | PLUS   { Add }
  | DASH   { Sub }
  | STAR   { Mul }
  | SHL    { Shl }
  | SHR    { Shr }
  | SAR    { Sar }
  | LT     { Lt }
  | LE     { Lte }
  | GT     { Gt }
  | GE     { Gte }
  | EQEQ   { Eq }
  | NEQ    { Neq }
  | AND    { And }
  | OR     { Or }
  | BITAND { IAnd }
  | BITOR  { IOr }

%inline uop:
  | DASH  { Neg }
  | BANG  { Lognot }
  | TILDE { Bitnot }

gexp:
  | t=rtyp NULL  { loc $startpos $endpos @@ CNull t }
  | i=INT      { loc $startpos $endpos @@ CInt i }
  | str=STRING      { loc $startpos $endpos @@ CStr str }
  | TRUE      { loc $startpos $endpos @@ CBool true }
  | FALSE      { loc $startpos $endpos @@ CBool false }
  | NEW t=ty LBRACKET RBRACKET LBRACE gexplist=separated_list(COMMA, gexp) RBRACE 
    { loc $startpos $endpos @@ CArr (t, gexplist)}

lhs:  
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }

exp:
  | i=INT               { loc $startpos $endpos @@ CInt i }
  | t=rtyp NULL           { loc $startpos $endpos @@ CNull t }
  | e1=exp b=bop e2=exp { loc $startpos $endpos @@ Bop (b, e1, e2) }
  | u=uop e=exp         { loc $startpos $endpos @@ Uop (u, e) }
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | e=exp LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }
  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN
                        { loc $startpos $endpos @@ Call (e,es) }
  | LPAREN e=exp RPAREN { e } 
  | str=STRING  { loc $startpos $endpos @@ CStr str }
  | TRUE      { loc $startpos $endpos @@ CBool true }
  | FALSE      { loc $startpos $endpos @@ CBool false }
  | NEW t=ty LBRACKET RBRACKET LBRACE explist=separated_list(COMMA, exp) RBRACE 
    { loc $startpos $endpos @@ CArr (t, explist)}
  | NEW TINT LBRACKET e=exp RBRACKET { loc $startpos $endpos @@ NewArr (TInt, e) }
  | NEW TBOOL LBRACKET e=exp RBRACKET { loc $startpos $endpos @@ NewArr (TBool, e) }

vdecl:
  | VAR id=IDENT EQ init=exp { (id, init) }

vdecls:
  | vdecllist=separated_list(COMMA, vdecl) {vdecllist}

stmt: 
  | d=vdecl SEMI        { loc $startpos $endpos @@ Decl(d) }
  | p=lhs EQ e=exp SEMI { loc $startpos $endpos @@ Assn(p,e) }
  | e=exp LPAREN es=separated_list(COMMA, exp) RPAREN SEMI
                        { loc $startpos $endpos @@ SCall (e, es) }
  | ifs=if_stmt         { ifs }
  | RETURN SEMI         { loc $startpos $endpos @@ Ret(None) }
  | RETURN e=exp SEMI   { loc $startpos $endpos @@ Ret(Some e) }
  | WHILE LPAREN e=exp RPAREN b=block  
                        { loc $startpos $endpos @@ While(e, b) } 
  | FOR LPAREN vdecllist=vdecls SEMI SEMI RPAREN b=block 
    { loc $startpos $endpos @@ For (vdecllist, None, None, b) }
  | FOR LPAREN vdecllist=vdecls SEMI SEMI s=stmt RPAREN b=block 
    { loc $startpos $endpos @@ For (vdecllist, None, Some s, b) }
  | FOR LPAREN vdecllist=vdecls SEMI e=exp SEMI RPAREN b=block 
    { loc $startpos $endpos @@ For (vdecllist, Some e, None, b) }
  | FOR LPAREN vdecllist=vdecls SEMI e=exp SEMI s=stmt RPAREN b=block 
    { loc $startpos $endpos @@ For (vdecllist, Some e, Some s, b) }

block:
  | LBRACE stmts=list(stmt) RBRACE { stmts }

if_stmt:
  | IF LPAREN e=exp RPAREN b1=block b2=else_stmt
    { loc $startpos $endpos @@ If(e,b1,b2) }

else_stmt:
  | (* empty *)       { [] }
  | ELSE b=block      { b }
  | ELSE ifs=if_stmt  { [ ifs ] }
