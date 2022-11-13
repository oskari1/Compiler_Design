
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VAR
    | TVOID
    | TSTRING
    | TRUE
    | TINT
    | TILDE
    | TBOOL
    | STRING of (
# 13 "parser.mly"
       (string)
# 23 "parser.ml"
  )
    | STAR
    | SHR
    | SHL
    | SEMI
    | SAR
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | PLUS
    | OR
    | NULL
    | NEW
    | NEQ
    | LT
    | LPAREN
    | LE
    | LBRACKET
    | LBRACE
    | INT of (
# 11 "parser.mly"
       (int64)
# 47 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 53 "parser.ml"
  )
    | GT
    | GLOBAL
    | GE
    | FOR
    | FALSE
    | EQEQ
    | EQ
    | EOF
    | EMPTYBRACKETS
    | ELSE
    | DASH
    | COMMA
    | BITOR
    | BITAND
    | BANG
    | AND
  
end

include MenhirBasics

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 84 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_exp_top) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: exp_top. *)

  | MenhirState005 : (('s, 'r) _menhir_cell1_TILDE, 'r) _menhir_state
    (** State 005.
        Stack shape : TILDE.
        Start symbol: <undetermined>. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_NEW, 'r) _menhir_state
    (** State 008.
        Stack shape : NEW.
        Start symbol: <undetermined>. *)

  | MenhirState011 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TINT, 'r) _menhir_state
    (** State 011.
        Stack shape : NEW TINT.
        Start symbol: <undetermined>. *)

  | MenhirState012 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 012.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState016 : (('s, 'r) _menhir_cell1_DASH, 'r) _menhir_state
    (** State 016.
        Stack shape : DASH.
        Start symbol: <undetermined>. *)

  | MenhirState017 : (('s, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 017.
        Stack shape : BANG.
        Start symbol: <undetermined>. *)

  | MenhirState022 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 022.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState027 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 027.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState029 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 029.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState031 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 031.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState033 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 033.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState035 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_DASH, 'r) _menhir_state
    (** State 035.
        Stack shape : exp DASH.
        Start symbol: <undetermined>. *)

  | MenhirState037 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 037.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState039 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 039.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState042 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 042.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState044 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 044.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState046 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 046.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState048 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 048.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState050 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 050.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState052 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 052.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState054 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 054.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState056 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 056.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState058 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 058.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState060 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 060.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState062 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 062.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState070 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TBOOL, 'r) _menhir_state
    (** State 070.
        Stack shape : NEW TBOOL.
        Start symbol: <undetermined>. *)

  | MenhirState075 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 075.
        Stack shape : NEW ty.
        Start symbol: <undetermined>. *)

  | MenhirState082 : ('s, _menhir_box_prog) _menhir_state
    (** State 082.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState085 : (('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 085.
        Stack shape : TVOID IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState088 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 088.
        Stack shape : ty IDENT.
        Start symbol: prog. *)

  | MenhirState094 : ((('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 094.
        Stack shape : TVOID IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState095 : (('s, 'r) _menhir_cell1_LBRACE, 'r) _menhir_state
    (** State 095.
        Stack shape : LBRACE.
        Start symbol: <undetermined>. *)

  | MenhirState097 : (('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 097.
        Stack shape : WHILE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState099 : ((('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 099.
        Stack shape : WHILE LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState103 : (('s, 'r) _menhir_cell1_VAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 103.
        Stack shape : VAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState105 : (('s, 'r) _menhir_cell1_RETURN, 'r) _menhir_state
    (** State 105.
        Stack shape : RETURN.
        Start symbol: <undetermined>. *)

  | MenhirState110 : (('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 110.
        Stack shape : IF LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState112 : ((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 112.
        Stack shape : IF LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState114 : (((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_cell1_block, 'r) _menhir_state
    (** State 114.
        Stack shape : IF LPAREN exp RPAREN block.
        Start symbol: <undetermined>. *)

  | MenhirState120 : (('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 120.
        Stack shape : FOR LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState122 : ((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 122.
        Stack shape : FOR LPAREN vdecls SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState123 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_state
    (** State 123.
        Stack shape : FOR LPAREN vdecls SEMI SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState124 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_cell1_RPAREN, 'r) _menhir_state
    (** State 124.
        Stack shape : FOR LPAREN vdecls SEMI SEMI RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState129 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_cell1_stmt _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 129.
        Stack shape : FOR LPAREN vdecls SEMI SEMI stmt RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState132 : (('s, 'r) _menhir_cell1_lhs, 'r) _menhir_state
    (** State 132.
        Stack shape : lhs.
        Start symbol: <undetermined>. *)

  | MenhirState137 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 137.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState141 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 141.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState145 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 145.
        Stack shape : FOR LPAREN vdecls SEMI exp SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState146 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_cell1_RPAREN, 'r) _menhir_state
    (** State 146.
        Stack shape : FOR LPAREN vdecls SEMI exp SEMI RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState149 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_vdecls _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_cell1_stmt _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 149.
        Stack shape : FOR LPAREN vdecls SEMI exp SEMI stmt RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState152 : (('s, 'r) _menhir_cell1_vdecl, 'r) _menhir_state
    (** State 152.
        Stack shape : vdecl.
        Start symbol: <undetermined>. *)

  | MenhirState156 : (('s, 'r) _menhir_cell1_stmt, 'r) _menhir_state
    (** State 156.
        Stack shape : stmt.
        Start symbol: <undetermined>. *)

  | MenhirState163 : (('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 163.
        Stack shape : GLOBAL IDENT.
        Start symbol: prog. *)

  | MenhirState168 : (('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_state
    (** State 168.
        Stack shape : NEW.
        Start symbol: prog. *)

  | MenhirState171 : ((('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 171.
        Stack shape : NEW ty.
        Start symbol: prog. *)

  | MenhirState181 : (('s, _menhir_box_prog) _menhir_cell1_gexp, _menhir_box_prog) _menhir_state
    (** State 181.
        Stack shape : gexp.
        Start symbol: prog. *)

  | MenhirState187 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 187.
        Stack shape : ty IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState189 : ((('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 189.
        Stack shape : ty IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState194 : (('s, _menhir_box_prog) _menhir_cell1_decl, _menhir_box_prog) _menhir_state
    (** State 194.
        Stack shape : decl.
        Start symbol: prog. *)

  | MenhirState196 : ('s, _menhir_box_stmt_top) _menhir_state
    (** State 196.
        Stack shape : .
        Start symbol: stmt_top. *)


and ('s, 'r) _menhir_cell1_arglist = 
  | MenhirCell1_arglist of 's * ('s, 'r) _menhir_state * ((Ast.ty * Ast.id) list)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Ast.block) * Lexing.position

and ('s, 'r) _menhir_cell1_decl = 
  | MenhirCell1_decl of 's * ('s, 'r) _menhir_state * (Ast.decl)

and ('s, 'r) _menhir_cell1_exp = 
  | MenhirCell1_exp of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_gexp = 
  | MenhirCell1_gexp of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node)

and ('s, 'r) _menhir_cell1_lhs = 
  | MenhirCell1_lhs of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt Ast.node)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.ty) * Lexing.position

and ('s, 'r) _menhir_cell1_vdecl = 
  | MenhirCell1_vdecl of 's * ('s, 'r) _menhir_state * (Ast.vdecl) * Lexing.position

and ('s, 'r) _menhir_cell1_vdecls = 
  | MenhirCell1_vdecls of 's * ('s, 'r) _menhir_state * (Ast.vdecl list)

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_DASH = 
  | MenhirCell1_DASH of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_DASH = 
  | MenhirCell0_DASH of 's * Lexing.position

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_GLOBAL = 
  | MenhirCell1_GLOBAL of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 14 "parser.mly"
       (string)
# 442 "parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAREN = 
  | MenhirCell0_LPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NEW = 
  | MenhirCell1_NEW of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RPAREN = 
  | MenhirCell1_RPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_SEMI = 
  | MenhirCell1_SEMI of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_SEMI = 
  | MenhirCell0_SEMI of 's * Lexing.position

and ('s, 'r) _menhir_cell1_TBOOL = 
  | MenhirCell1_TBOOL of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TILDE = 
  | MenhirCell1_TILDE of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TINT = 
  | MenhirCell1_TINT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TVOID = 
  | MenhirCell1_TVOID of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_VAR = 
  | MenhirCell1_VAR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_stmt_top = 
  | MenhirBox_stmt_top of (Ast.stmt Ast.node) [@@unboxed]

and _menhir_box_prog = 
  | MenhirBox_prog of (Ast.prog) [@@unboxed]

and _menhir_box_exp_top = 
  | MenhirBox_exp_top of (Ast.exp Ast.node) [@@unboxed]

let _menhir_action_03 =
  fun xs ->
    let l = 
# 229 "<standard.mly>"
    ( xs )
# 507 "parser.ml"
     in
    (
# 104 "parser.mly"
                                            ( l )
# 512 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_04 =
  fun stmts ->
    (
# 201 "parser.mly"
                                   ( stmts )
# 520 "parser.ml"
     : (Ast.block))

let _menhir_action_05 =
  fun _endpos__5_ _startpos__1_ init name ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 99 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 530 "parser.ml"
     : (Ast.decl))

let _menhir_action_06 =
  fun _endpos_body_ _startpos__1_ args body fname ->
    let frtyp = 
# 112 "parser.mly"
           ( RetVoid )
# 538 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos__1_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 101 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 546 "parser.ml"
     : (Ast.decl))

let _menhir_action_07 =
  fun _endpos_body_ _startpos_t_ args body fname t ->
    let frtyp = 
# 113 "parser.mly"
           ( RetVal t )
# 554 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos_t_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 101 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 562 "parser.ml"
     : (Ast.decl))

let _menhir_action_08 =
  fun () ->
    (
# 208 "parser.mly"
                      ( [] )
# 570 "parser.ml"
     : (Ast.block))

let _menhir_action_09 =
  fun b ->
    (
# 209 "parser.mly"
                      ( b )
# 578 "parser.ml"
     : (Ast.block))

let _menhir_action_10 =
  fun ifs ->
    (
# 210 "parser.mly"
                      ( [ ifs ] )
# 586 "parser.ml"
     : (Ast.block))

let _menhir_action_11 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 157 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 596 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_12 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 116 "parser.mly"
            ( RString )
# 604 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 158 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 612 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_13 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 117 "parser.mly"
                       ( RArray t )
# 620 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 158 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 627 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_14 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 120 "parser.mly"
           ( Add )
# 635 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 642 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_15 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 121 "parser.mly"
           ( Sub )
# 650 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 657 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_16 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 122 "parser.mly"
           ( Mul )
# 665 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 672 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 123 "parser.mly"
           ( Shl )
# 680 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 687 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_18 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 124 "parser.mly"
           ( Shr )
# 695 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 702 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_19 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 125 "parser.mly"
           ( Sar )
# 710 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 717 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_20 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 126 "parser.mly"
           ( Lt )
# 725 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 732 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_21 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 127 "parser.mly"
           ( Lte )
# 740 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 747 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_22 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 128 "parser.mly"
           ( Gt )
# 755 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 762 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_23 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 129 "parser.mly"
           ( Gte )
# 770 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 777 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_24 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 130 "parser.mly"
           ( Eq )
# 785 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 792 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_25 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 131 "parser.mly"
           ( Neq )
# 800 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 807 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_26 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 132 "parser.mly"
           ( And )
# 815 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 822 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_27 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 133 "parser.mly"
           ( Or )
# 830 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 837 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_28 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 134 "parser.mly"
           ( IAnd )
# 845 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 852 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_29 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 135 "parser.mly"
           ( IOr )
# 860 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 867 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_30 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 138 "parser.mly"
          ( Neg )
# 875 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 160 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 883 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_31 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 139 "parser.mly"
          ( Lognot )
# 891 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 160 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 899 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_32 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 140 "parser.mly"
          ( Bitnot )
# 907 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 160 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 915 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_33 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 161 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 925 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_34 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 163 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 935 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_35 =
  fun _endpos__4_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 943 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 165 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 950 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_36 =
  fun e ->
    (
# 166 "parser.mly"
                        ( e )
# 958 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_37 =
  fun _endpos_str_ _startpos_str_ str ->
    let _endpos = _endpos_str_ in
    let _startpos = _startpos_str_ in
    (
# 167 "parser.mly"
                ( loc _startpos _endpos @@ CStr str )
# 968 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_38 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 168 "parser.mly"
              ( loc _startpos _endpos @@ CBool true )
# 978 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_39 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 169 "parser.mly"
               ( loc _startpos _endpos @@ CBool false )
# 988 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_40 =
  fun _endpos__6_ _startpos__1_ t xs ->
    let explist = 
# 229 "<standard.mly>"
    ( xs )
# 996 "parser.ml"
     in
    let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    (
# 171 "parser.mly"
    ( loc _startpos _endpos @@ CArr (t, explist))
# 1003 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_41 =
  fun _endpos__5_ _startpos__1_ e ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 172 "parser.mly"
                                     ( loc _startpos _endpos @@ NewArr (TInt, e) )
# 1013 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_42 =
  fun _endpos__5_ _startpos__1_ e ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 173 "parser.mly"
                                      ( loc _startpos _endpos @@ NewArr (TBool, e) )
# 1023 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_43 =
  fun e ->
    (
# 89 "parser.mly"
              ( e )
# 1031 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_44 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 116 "parser.mly"
            ( RString )
# 1039 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 143 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1047 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_45 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 117 "parser.mly"
                       ( RArray t )
# 1055 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 143 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1062 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_46 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 144 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 1072 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_47 =
  fun _endpos_str_ _startpos_str_ str ->
    let _endpos = _endpos_str_ in
    let _startpos = _startpos_str_ in
    (
# 145 "parser.mly"
                    ( loc _startpos _endpos @@ CStr str )
# 1082 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_48 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 146 "parser.mly"
              ( loc _startpos _endpos @@ CBool true )
# 1092 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_49 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 147 "parser.mly"
               ( loc _startpos _endpos @@ CBool false )
# 1102 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_50 =
  fun _endpos__6_ _startpos__1_ t xs ->
    let gexplist = 
# 229 "<standard.mly>"
    ( xs )
# 1110 "parser.ml"
     in
    let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    (
# 149 "parser.mly"
    ( loc _startpos _endpos @@ CArr (t, gexplist))
# 1117 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_51 =
  fun _endpos_b2_ _startpos__1_ b1 b2 e ->
    let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    (
# 205 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 1127 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_52 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 152 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 1137 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_53 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 154 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 1147 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_54 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1155 "parser.ml"
     : (Ast.prog))

let _menhir_action_55 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1163 "parser.ml"
     : (Ast.prog))

let _menhir_action_56 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1171 "parser.ml"
     : (Ast.block))

let _menhir_action_57 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1179 "parser.ml"
     : (Ast.block))

let _menhir_action_58 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1187 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_59 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1195 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_60 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1203 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_61 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1211 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_62 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1219 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_63 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1227 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_64 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1235 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_65 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1243 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_66 =
  fun p ->
    (
# 95 "parser.mly"
                      ( p )
# 1251 "parser.ml"
     : (Ast.prog))

let _menhir_action_67 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1259 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_68 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1267 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_69 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1275 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_70 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1283 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_71 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1291 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1296 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_72 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1304 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1309 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_73 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1317 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_74 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1325 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_75 =
  fun _endpos__2_ _startpos_d_ d ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_d_ in
    (
# 182 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 1335 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_76 =
  fun _endpos__4_ _startpos_p_ e p ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_p_ in
    (
# 183 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 1345 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_77 =
  fun _endpos__5_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1353 "parser.ml"
     in
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_e_ in
    (
# 185 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 1360 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_78 =
  fun ifs ->
    (
# 186 "parser.mly"
                        ( ifs )
# 1368 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_79 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    (
# 187 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 1378 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_80 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 188 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 1388 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_81 =
  fun _endpos_b_ _startpos__1_ b e ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 190 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 1398 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_82 =
  fun _endpos_b_ _startpos__1_ b vdecllist ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 192 "parser.mly"
    ( loc _startpos _endpos @@ For (vdecllist, None, None, b) )
# 1408 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_83 =
  fun _endpos_b_ _startpos__1_ b s vdecllist ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 194 "parser.mly"
    ( loc _startpos _endpos @@ For (vdecllist, None, Some s, b) )
# 1418 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_84 =
  fun _endpos_b_ _startpos__1_ b e vdecllist ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 196 "parser.mly"
    ( loc _startpos _endpos @@ For (vdecllist, Some e, None, b) )
# 1428 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_85 =
  fun _endpos_b_ _startpos__1_ b e s vdecllist ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 198 "parser.mly"
    ( loc _startpos _endpos @@ For (vdecllist, Some e, Some s, b) )
# 1438 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_86 =
  fun s ->
    (
# 92 "parser.mly"
               ( s )
# 1446 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_87 =
  fun () ->
    (
# 107 "parser.mly"
           ( TInt )
# 1454 "parser.ml"
     : (Ast.ty))

let _menhir_action_88 =
  fun () ->
    let r = 
# 116 "parser.mly"
            ( RString )
# 1462 "parser.ml"
     in
    (
# 108 "parser.mly"
           ( TRef r )
# 1467 "parser.ml"
     : (Ast.ty))

let _menhir_action_89 =
  fun t ->
    let r = 
# 117 "parser.mly"
                       ( RArray t )
# 1475 "parser.ml"
     in
    (
# 108 "parser.mly"
           ( TRef r )
# 1480 "parser.ml"
     : (Ast.ty))

let _menhir_action_90 =
  fun () ->
    (
# 109 "parser.mly"
           ( TBool )
# 1488 "parser.ml"
     : (Ast.ty))

let _menhir_action_91 =
  fun id init ->
    (
# 176 "parser.mly"
                             ( (id, init) )
# 1496 "parser.ml"
     : (Ast.vdecl))

let _menhir_action_92 =
  fun xs ->
    let vdecllist = 
# 229 "<standard.mly>"
    ( xs )
# 1504 "parser.ml"
     in
    (
# 179 "parser.mly"
                                           (vdecllist)
# 1509 "parser.ml"
     : (Ast.vdecl list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BANG ->
        "BANG"
    | BITAND ->
        "BITAND"
    | BITOR ->
        "BITOR"
    | COMMA ->
        "COMMA"
    | DASH ->
        "DASH"
    | ELSE ->
        "ELSE"
    | EMPTYBRACKETS ->
        "EMPTYBRACKETS"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQEQ ->
        "EQEQ"
    | FALSE ->
        "FALSE"
    | FOR ->
        "FOR"
    | GE ->
        "GE"
    | GLOBAL ->
        "GLOBAL"
    | GT ->
        "GT"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT _ ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LE ->
        "LE"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | NEQ ->
        "NEQ"
    | NEW ->
        "NEW"
    | NULL ->
        "NULL"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SAR ->
        "SAR"
    | SEMI ->
        "SEMI"
    | SHL ->
        "SHL"
    | SHR ->
        "SHR"
    | STAR ->
        "STAR"
    | STRING _ ->
        "STRING"
    | TBOOL ->
        "TBOOL"
    | TILDE ->
        "TILDE"
    | TINT ->
        "TINT"
    | TRUE ->
        "TRUE"
    | TSTRING ->
        "TSTRING"
    | TVOID ->
        "TVOID"
    | VAR ->
        "VAR"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_198 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let s = _v in
          let _v = _menhir_action_86 s in
          MenhirBox_stmt_top _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_192 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let p = _v in
      let _v = _menhir_action_66 p in
      MenhirBox_prog _v
  
  let rec _menhir_run_195 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_decl -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_55 x xs in
      _menhir_goto_list_decl_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState194 ->
          _menhir_run_195 _menhir_stack _v
      | MenhirState082 ->
          _menhir_run_192 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_135_spec_196 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_78 ifs in
      _menhir_run_198 _menhir_stack _v _tok
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_12 _endpos__2_ _startpos__1_ in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | EMPTYBRACKETS ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState122 ->
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState196 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_144 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | VAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState145 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState145 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState145 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState145 _tok
          | RPAREN ->
              let _menhir_s = MenhirState145 in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell1_RPAREN (_menhir_stack, _menhir_s, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
              | _ ->
                  _eRR ())
          | RETURN ->
              _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | INT _v_13 ->
              let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_15 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_15, _startpos_14, _v_13) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState145 _tok
          | IF ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | IDENT _v_17 ->
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v_17 MenhirState145
          | FOR ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | FALSE ->
              let _startpos_18 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_19 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_19, _startpos_18) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState145 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
          | _ ->
              _eRR ())
      | SAR ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState027 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState027 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState027 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState027 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState027 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState027 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState027 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_16 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState022 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState022 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState022 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState022 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState022 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState022 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState022 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | RPAREN ->
          let _v = _menhir_action_58 () in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState062 _tok
          | TINT ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState062 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | TBOOL ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_5 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState062 _tok
          | STRING _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos_9, _startpos_8, _v_7) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState062 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | INT _v_11 ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState062 _tok
          | IDENT _v_15 ->
              let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_17, _startpos_16, _v_15) in
              let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState062 _tok
          | FALSE ->
              let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos_19) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState062 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
          | _ ->
              _eRR ())
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACE | RPAREN ->
          let x = _v in
          let _v = _menhir_action_67 x in
          _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState031 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState031 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState031 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState031 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState031 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_18 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState033 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState033 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState033 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState033 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState033 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState033 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState033 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_14 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState029 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState029 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState029 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState029 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState029 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState029 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState029 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (i, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_34 _endpos__4_ _startpos_e_ e i in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState037 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState037 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState037 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState037 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState037 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState037 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState037 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_17 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_DASH (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState035 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState035 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState035 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState035 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState035 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState035 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState035 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell0_DASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_15 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | EMPTYBRACKETS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NULL ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__2_, _startpos_t_, t) = (_endpos, _startpos, _v) in
              let _v = _menhir_action_13 _endpos__2_ _startpos_t_ t in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_t_ _v _menhir_s _tok
          | EMPTYBRACKETS ->
              let (_startpos_t_, t) = (_startpos, _v) in
              let _v = _menhir_action_89 t in
              _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState194 ->
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState163 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState181 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState171 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState168 ->
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState196 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_185 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_2) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState187 _tok
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState187 _tok
              | TBOOL ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_7 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState187 _tok
              | RPAREN ->
                  let _v = _menhir_action_62 () in
                  _menhir_run_092_spec_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EMPTYBRACKETS ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_71 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | EMPTYBRACKETS ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState187 ->
          _menhir_run_091_spec_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState085 ->
          _menhir_run_091_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_091_spec_187 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_63 x in
      _menhir_run_092_spec_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_092_spec_187 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState187 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState189
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | VAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState095 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState095 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState095 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState095 _tok
      | RETURN ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState095 _tok
      | IF ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | IDENT _v ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095
      | FOR ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState095 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | RBRACE ->
          let _v = _menhir_action_56 () in
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState097 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState097 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState097 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState097 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState097 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState097 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState097 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState039 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState039 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState039 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState039 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState039 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState039 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState039 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_19 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState005 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState005 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState005 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TILDE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_32 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_88 () in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _menhir_stack = MenhirCell1_TINT (_menhir_stack, MenhirState008, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | TRUE ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
                  let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
                  _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
              | TINT ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | TBOOL ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
              | STRING _v ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_5, _v) in
                  let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
                  _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState011 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | LPAREN ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | INT _v ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_6, _v) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState011 _tok
              | IDENT _v ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_7, _v) in
                  let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
                  _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState011 _tok
              | FALSE ->
                  let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_8) in
                  let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                  _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
              | DASH ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | BANG ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | _ ->
                  _eRR ())
          | EMPTYBRACKETS ->
              let _v = _menhir_action_87 () in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_1 _v MenhirState008 _tok
          | _ ->
              _eRR ())
      | TBOOL ->
          let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _menhir_stack = MenhirCell1_TBOOL (_menhir_stack, MenhirState008, _startpos_9) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | TRUE ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_10) in
                  let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
                  _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState070 _tok
              | TINT ->
                  let _startpos_11 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_11 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState070 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | TBOOL ->
                  let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_12 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState070 _tok
              | STRING _v ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_13, _v) in
                  let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
                  _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState070 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | LPAREN ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | INT _v ->
                  let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_14, _v) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState070 _tok
              | IDENT _v ->
                  let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_15, _v) in
                  let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
                  _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState070 _tok
              | FALSE ->
                  let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_16) in
                  let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                  _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState070 _tok
              | DASH ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | BANG ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
              | _ ->
                  _eRR ())
          | EMPTYBRACKETS ->
              let _v = _menhir_action_90 () in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_9 _v MenhirState008 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | EMPTYBRACKETS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | TRUE ->
                  let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
                  let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState075 _tok
              | TINT ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState075 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | TBOOL ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState075 _tok
              | STRING _v_6 ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_7, _v_6) in
                  let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState075 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | LPAREN ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | INT _v_9 ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState075 _tok
              | IDENT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_13, _v_12) in
                  let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState075 _tok
              | FALSE ->
                  let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_15) in
                  let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                  _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState075 _tok
              | DASH ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | BANG ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | RBRACE ->
                  let _v = _menhir_action_58 () in
                  _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | EMPTYBRACKETS ->
              let (_startpos_t_, t) = (_startpos, _v) in
              let _v = _menhir_action_89 t in
              _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState012 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState012 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState012 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState012 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState012 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState012
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_36 e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState042 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState042 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState042 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState042 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState042 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND | BITOR | COMMA | EOF | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_27 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState044 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState044 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState044 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState044 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState044 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState044 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_25 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState046 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState046 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState046 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState046 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState046 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState046 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_20 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState016 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState016 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState016 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState016 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState016 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState016 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_30 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_017 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState017 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState017 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState017 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState017 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState017 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState017 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState017 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState017
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | DASH | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_31 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState048 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState048 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState048 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState048 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState048 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState048 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_21 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState050 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState050 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState050 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState050 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState050 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState050 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_22 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState052 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState052 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState052 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState052 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState052 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState052 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | GE | GT | LE | LT | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_23 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState054 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState054 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState054 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState054 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState054 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState054 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | EQEQ | NEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_24 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState056 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState056 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState056 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState056 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState056 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState056 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BITAND | BITOR | COMMA | EOF | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_26 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState058 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState058 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState058 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState058 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState058 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState058 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR | COMMA | EOF | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_29 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState060 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState060 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState060 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState060 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState060 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState060 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND | BITOR | COMMA | EOF | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_28 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__6_) = (_v, _endpos) in
          let _v = _menhir_action_40 _endpos__6_ _startpos__1_ t xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__6_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TINT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_TINT (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_41 _endpos__5_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TBOOL as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_TBOOL (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_42 _endpos__5_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState103 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState103 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState103 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState103 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | LPAREN ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState103 _tok
              | IDENT _v_16 ->
                  let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
                  let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState103 _tok
              | FALSE ->
                  let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
                  let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState103 _tok
              | DASH ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | BANG ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | SEMI ->
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let init = _v in
          let _v = _menhir_action_91 id init in
          _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_vdecl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState152 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState196 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_151 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_vdecl (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | _ ->
              _eRR ())
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_73 x in
          _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState120 ->
          _menhir_run_154_spec_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_154_spec_120 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_65 x in
      _menhir_run_155_spec_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_155_spec_120 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _v =
        let xs = _v in
        _menhir_action_92 xs
      in
      let _menhir_stack = MenhirCell1_vdecls (_menhir_stack, MenhirState120, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState122 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState122 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState122 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState122 _tok
      | SEMI ->
          let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell1_SEMI (_menhir_stack, MenhirState122, _endpos_7) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | VAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_8, _startpos) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState123 _tok
          | TINT ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState123 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | TBOOL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState123 _tok
          | STRING _v_12 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos_13, _startpos, _v_12) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState123 _tok
          | RPAREN ->
              let _menhir_s = MenhirState123 in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell1_RPAREN (_menhir_stack, _menhir_s, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState124
              | _ ->
                  _eRR ())
          | RETURN ->
              _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | INT _v_16 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_17, _startpos, _v_16) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState123 _tok
          | IF ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | IDENT _v_19 ->
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v_19 MenhirState123
          | FOR ->
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState123 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | _ ->
              _eRR ())
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | INT _v_22 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_23 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_23, _startpos, _v_22) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState122 _tok
      | IDENT _v_25 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_26 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos_26, _startpos, _v_25) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState122 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_28 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_28, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState122 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState137 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState137 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState137 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState137 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | INT _v_12 ->
              let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState137 _tok
          | IDENT _v_16 ->
              let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
              let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState137 _tok
          | FALSE ->
              let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState137 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | RPAREN ->
              let _v = _menhir_action_58 () in
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LE ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | TRUE ->
              let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_25, _startpos_24) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState141 _tok
          | TINT ->
              let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_27 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState141 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | TBOOL ->
              let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_29 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState141 _tok
          | STRING _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos_33, _startpos_32, _v_31) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState141 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | INT _v_35 ->
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_37, _startpos_36, _v_35) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState141 _tok
          | IDENT _v_39 ->
              let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_41 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_41, _startpos_40, _v_39) in
              let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState141 _tok
          | FALSE ->
              let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_44, _startpos_43) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState141 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
          | _ ->
              _eRR ())
      | GT ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__5_) = (_v, _endpos_0) in
              let _v = _menhir_action_77 _endpos__5_ _startpos_e_ e xs in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | AND | BITAND | BITOR | DASH | EQEQ | GE | GT | LBRACKET | LE | LPAREN | LT | NEQ | OR | PLUS | SAR | SHL | SHR | STAR ->
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__4_) = (_v, _endpos) in
              let _v = _menhir_action_35 _endpos__4_ _startpos_e_ e xs in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState196 ->
          _menhir_run_198 _menhir_stack _v _tok
      | MenhirState156 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_156 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | VAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState156 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState156 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState156 _tok
      | STRING _v_3 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v_3) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState156 _tok
      | RETURN ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | INT _v_5 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState156 _tok
      | IF ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | IDENT _v_7 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState156
      | FOR ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState156 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
      | RBRACE ->
          let _v = _menhir_action_56 () in
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | TRUE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState105 _tok
      | TINT ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
      | TILDE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | TBOOL ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState105 _tok
      | STRING _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState105 _tok
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_79 _endpos__2_ _startpos__1_ in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NEW ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | LPAREN ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | INT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState105 _tok
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState105 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState105 _tok
      | DASH ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | BANG ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_80 _endpos__3_ _startpos__1_ e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState110 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_87 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState110 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_90 () in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState110 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState110 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | LPAREN ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState110 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState110 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState110 _tok
          | DASH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | BANG ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | AND | BITAND | BITOR | DASH | EQEQ | GE | GT | LBRACKET | LE | LPAREN | LT | NEQ | OR | PLUS | SAR | SHL | SHR | STAR ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v _menhir_s _tok
      | EQ ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_52 _endpos_id_ _startpos_id_ id in
          _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_id_ _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_lhs : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      let _menhir_stack = MenhirCell1_lhs (_menhir_stack, _menhir_s, _v, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState132 _tok
      | TINT ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState132 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | TBOOL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState132 _tok
      | STRING _v_6 ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_7, _v_6) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState132 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | INT _v_9 ->
          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState132 _tok
      | IDENT _v_12 ->
          let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_13, _v_12) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState132 _tok
      | FALSE ->
          let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_15) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState132 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lhs as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_lhs (_menhir_stack, _menhir_s, p, _startpos_p_) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_76 _endpos__4_ _startpos_p_ e p in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_119 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
          | SEMI ->
              let _v = _menhir_action_64 () in
              _menhir_run_155_spec_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_57 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState095 ->
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState156 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_158 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, stmts) = (_endpos, _v) in
      let _v = _menhir_action_04 stmts in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState189 ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState094 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState114 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_190 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_07 _endpos_body_ _startpos_t_ args body fname t in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_decl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState194
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState194 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState194 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState194 _tok
      | GLOBAL ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState194
      | EOF ->
          let _v = _menhir_action_54 () in
          _menhir_run_195 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState085 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState085 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState085 _tok
              | RPAREN ->
                  let _v = _menhir_action_62 () in
                  _menhir_run_092_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_092_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState085 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | _ ->
          _eRR ()
  
  and _menhir_run_161 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
                  _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState163 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState163 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_47 _endpos_str_ _startpos_str_ str in
                  _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | NEW ->
                  _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState163
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_46 _endpos_i_ _startpos_i_ i in
                  _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_17, _startpos_16) in
                  let _v = _menhir_action_49 _endpos__1_ _startpos__1_ in
                  _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_164 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_44 _endpos__2_ _startpos__1_ in
          _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | EMPTYBRACKETS ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_gexp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState163 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState181 ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState171 ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_183 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (init, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_05 _endpos__5_ _startpos__1_ init name in
          _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_180 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_gexp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
              _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState181 _tok
          | TINT ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_87 () in
              _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState181 _tok
          | TBOOL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_90 () in
              _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState181 _tok
          | STRING _v_3 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v_3) in
              let _v = _menhir_action_47 _endpos_str_ _startpos_str_ str in
              _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState181 _tok
          | NEW ->
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
          | INT _v_5 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
              let _v = _menhir_action_46 _endpos_i_ _startpos_i_ i in
              _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState181 _tok
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_49 _endpos__1_ _startpos__1_ in
              _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState181 _tok
          | _ ->
              _eRR ())
      | RBRACE ->
          let x = _v in
          let _v = _menhir_action_69 x in
          _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_174 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | EMPTYBRACKETS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NULL ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__2_, _startpos_t_, t) = (_endpos, _startpos, _v) in
              let _v = _menhir_action_45 _endpos__2_ _startpos_t_ t in
              _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | EMPTYBRACKETS ->
              let (_startpos_t_, t) = (_startpos, _v) in
              let _v = _menhir_action_89 t in
              _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_88 () in
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState168 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState168 _tok
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState168 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_169 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | EMPTYBRACKETS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
              | TRUE ->
                  let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
                  let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
                  _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState171 _tok
              | TINT ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState171 _tok
              | TBOOL ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState171 _tok
              | STRING _v_6 ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos_7, _v_6) in
                  let _v = _menhir_action_47 _endpos_str_ _startpos_str_ str in
                  _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState171 _tok
              | NEW ->
                  _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState171
              | INT _v_9 ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
                  let _v = _menhir_action_46 _endpos_i_ _startpos_i_ i in
                  _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState171 _tok
              | FALSE ->
                  let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_12) in
                  let _v = _menhir_action_49 _endpos__1_ _startpos__1_ in
                  _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState171 _tok
              | RBRACE ->
                  let _v = _menhir_action_60 () in
                  _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | EMPTYBRACKETS ->
              let (_startpos_t_, t) = (_startpos, _v) in
              let _v = _menhir_action_89 t in
              _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_178 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
      let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (xs, _endpos__6_) = (_v, _endpos) in
      let _v = _menhir_action_50 _endpos__6_ _startpos__1_ t xs in
      _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_gexp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState181 ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState171 ->
          _menhir_run_177_spec_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_182 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_gexp -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_gexp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_70 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_177_spec_171 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_61 x in
      _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_160 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_body_ _startpos__1_ args body fname in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_150 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI, ttv_result) _menhir_cell1_stmt _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_stmt (_menhir_stack, _, s) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_vdecls (_menhir_stack, _, vdecllist) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_85 _endpos_b_ _startpos__1_ b e s vdecllist in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_147 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI, ttv_result) _menhir_cell1_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_RPAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_vdecls (_menhir_stack, _, vdecllist) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_84 _endpos_b_ _startpos__1_ b e vdecllist in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_130 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI, ttv_result) _menhir_cell1_stmt _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_stmt (_menhir_stack, _, s) = _menhir_stack in
      let MenhirCell1_SEMI (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_vdecls (_menhir_stack, _, vdecllist) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_83 _endpos_b_ _startpos__1_ b s vdecllist in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_125 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI, ttv_result) _menhir_cell1_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_RPAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_SEMI (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_vdecls (_menhir_stack, _, vdecllist) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_82 _endpos_b_ _startpos__1_ b vdecllist in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_116 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_09 b in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _v _tok
  
  and _menhir_goto_else_stmt : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_block (_menhir_stack, _, b1, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b2_, b2) = (_endpos, _v) in
      let _v = _menhir_action_51 _endpos_b2_ _startpos__1_ b1 b2 e in
      _menhir_goto_if_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b2_ _v _menhir_s _tok
  
  and _menhir_goto_if_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState196 ->
          _menhir_run_135_spec_196 _menhir_stack _v _tok
      | MenhirState095 ->
          _menhir_run_135_spec_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_135_spec_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState145 ->
          _menhir_run_135_spec_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState123 ->
          _menhir_run_135_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState114 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_135_spec_095 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_78 ifs in
      _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState095 _tok
  
  and _menhir_run_135_spec_156 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_78 ifs in
      _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState156 _tok
  
  and _menhir_run_135_spec_145 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_78 ifs in
      _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState145 _tok
  
  and _menhir_run_148 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_135_spec_123 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_78 ifs in
      _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState123 _tok
  
  and _menhir_run_128 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_vdecls _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_ifs_, ifs) = (_endpos, _v) in
      let _v = _menhir_action_10 ifs in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ifs_ _v _tok
  
  and _menhir_run_113 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
          | IF ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
          | _ ->
              _eRR ())
      | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | INT _ | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | VAR | WHILE ->
          let _v = _menhir_action_08 () in
          _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_81 _endpos_b_ _startpos__1_ b e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_142 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | AND | BITAND | BITOR | DASH | EQEQ | GE | GT | LBRACKET | LE | LPAREN | LT | NEQ | OR | PLUS | SAR | SHL | SHR | STAR ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_34 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | EQ ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_53 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_153 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_vdecl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_vdecl (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_74 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_126 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_d_, d) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_75 _endpos__2_ _startpos_d_ d in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091_spec_085 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_63 x in
      _menhir_run_092_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_089 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_72 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_090 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let _v = _menhir_action_89 t in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState137 ->
          _menhir_run_023_spec_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState075 ->
          _menhir_run_023_spec_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState022 ->
          _menhir_run_023_spec_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_063 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_68 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_023_spec_137 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_59 x in
      _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_023_spec_075 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_59 x in
      _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_023_spec_022 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_59 x in
      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_024 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (xs, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_35 _endpos__4_ _startpos_e_ e xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_exp_top) _menhir_state -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GE ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EOF ->
          let e = _v in
          let _v = _menhir_action_43 e in
          MenhirBox_exp_top _v
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BITAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState000 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState000 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_33 _endpos_id_ _startpos_id_ id in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState000 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_082 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState082 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState082 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState082 _tok
      | GLOBAL ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | EOF ->
          let _v = _menhir_action_54 () in
          _menhir_run_192 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_196 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | VAR ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_38 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState196 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState196 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState196 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_str_, _startpos_str_, str) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_37 _endpos_str_ _startpos_str_ str in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_str_ _startpos_str_ _v MenhirState196 _tok
      | RETURN ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | LPAREN ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState196 _tok
      | IF ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | IDENT _v ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState196
      | FOR ->
          _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState196 _tok
      | DASH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | BANG ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState196
      | _ ->
          _eRR ()
  
end

let stmt_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_stmt_top v = _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let exp_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_exp_top v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
