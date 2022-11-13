
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TVOID
  | TSTRING
  | TRUE
  | TINT
  | TILDE
  | TBOOL
  | STRING of (string)
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
  | INT of (int64)
  | IF
  | IDENT of (string)
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)
