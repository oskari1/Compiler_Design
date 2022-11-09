# 1 "lexer.mll"
 
  open Lexing
  open Parser
  open Range
  
  exception Lexer_error of Range.t * string

  let reset_lexbuf (filename:string) (lnum:int) lexbuf : unit =
    lexbuf.lex_curr_p <- {
      pos_fname = filename;
      pos_cnum = 0;
      pos_bol = 0;
      pos_lnum = lnum;
    }

  let newline lexbuf =
    lexbuf.lex_curr_p <- { (lexeme_end_p lexbuf) with
      pos_lnum = (lexeme_end_p lexbuf).pos_lnum + 1;
      pos_bol = (lexeme_end lexbuf) }
    
  (* Boilerplate to define exceptional cases in the lexer. *)
  let unexpected_char lexbuf (c:char) : 'a =
    raise (Lexer_error (Range.lex_range lexbuf,
        Printf.sprintf "Unexpected character: '%c'" c))

  (* Lexing reserved words *)
  let reserved_words = [
  (* Keywords *)
  ("null", NULL);
  ("void", TVOID);
  ("int", TINT);
  ("string", TSTRING);
  ("else", ELSE);
  ("if", IF);
  ("while", WHILE);
  ("return", RETURN);
  ("var", VAR);
  ("global", GLOBAL);
  ("true", TRUE);
  ("false", FALSE);
  ("new", NEW);
  ("bool", TBOOL);
  ("for", FOR);

  (* Symbols *)
  ( ";", SEMI);
  ( ",", COMMA);
  ( "{", LBRACE);
  ( "}", RBRACE);
  ( "+", PLUS);
  ( "-", DASH);
  ( "*", STAR);
  ( "=", EQ);
  ( "==", EQEQ);
  ( "!", BANG);
  ( "~", TILDE);
  ( "(", LPAREN);
  ( ")", RPAREN);
  ( "[", LBRACKET);
  ( "]", RBRACKET);
  ( "<<", SHL);
  ( ">>", SHR);
  ( ">>>", SAR);
  ( "<", LT);
  ( "<=", LE);
  ( ">", GT);
  ( ">=", GE);
  ( "!=", NEQ);
  ( "&", AND);
  ( "|", OR);
  ( "[&]", BITAND);
  ( "[|]", BITOR);
  ]

let (symbol_table : (string, Parser.token) Hashtbl.t) = Hashtbl.create 1024
  let _ =
    List.iter (fun (str,t) -> Hashtbl.add symbol_table str t) reserved_words

  let create_token lexbuf =
    let str = lexeme lexbuf in 
    try (Hashtbl.find symbol_table str) 
    with _ -> IDENT str

  (* Lexing comments and strings *)
  let string_buffer = ref (Bytes.create 2048)
  let string_end = ref 0
  let start_lex = ref (Range.start_of_range Range.norange)

  let start_pos_of_lexbuf lexbuf : pos =
    (Range.pos_of_lexpos (lexeme_start_p lexbuf))

  let lex_long_range lexbuf : Range.t =
    let end_p = lexeme_end_p lexbuf in
    mk_range end_p.pos_fname (!start_lex) (pos_of_lexpos end_p)  

  let reset_str () = string_end := 0

  let add_str ch =
    let x = !string_end in
    let buffer = !string_buffer
    in
      if x = Bytes.length buffer then
        begin
          let new_buffer = Bytes.create (x*2) in
          Bytes.blit buffer 0 new_buffer 0 x;
          Bytes.set new_buffer x ch;
          string_buffer := new_buffer;
          string_end := x+1
        end
      else
        begin
          Bytes.set buffer x ch;
          string_end := x+1
        end

  let get_str () = Bytes.sub_string (!string_buffer) 0 (!string_end)

  (* Lexing directives *)
  let lnum = ref 1

# 123 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\246\255\247\255\003\000\004\000\008\000\006\000\007\000\
    \001\000\248\255\005\000\021\000\031\000\087\000\252\255\253\255\
    \016\000\255\255\254\255\162\000\185\000\001\000\002\000\027\000\
    \000\001\251\255\002\000\252\255\253\255\222\000\007\000\086\000\
    \251\255\252\255\253\255\048\000\045\000\255\255\254\255\210\000\
    \251\255\252\255\253\255\254\255\255\255\024\001\249\255\243\000\
    \251\255\252\255\253\255\254\255\255\255\039\001\250\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\008\000\008\000\008\000\008\000\008\000\
    \007\000\255\255\006\000\005\000\005\000\004\000\255\255\255\255\
    \009\000\255\255\255\255\255\255\005\000\255\255\255\255\008\000\
    \255\255\255\255\003\000\255\255\255\255\001\000\000\000\255\255\
    \255\255\255\255\255\255\002\000\002\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\006\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\000\000\000\000\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \025\000\000\000\255\255\000\000\000\000\255\255\255\255\034\000\
    \000\000\000\000\000\000\255\255\255\255\000\000\000\000\040\000\
    \000\000\000\000\000\000\000\000\000\000\046\000\000\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\010\000\009\000\009\000\027\000\008\000\010\000\000\000\
    \030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \010\000\006\000\015\000\014\000\000\000\010\000\002\000\030\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\022\000\016\000\
    \012\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\018\000\002\000\003\000\007\000\004\000\002\000\
    \002\000\002\000\023\000\002\000\002\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
    \011\000\002\000\038\000\005\000\037\000\002\000\002\000\002\000\
    \033\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\002\000\002\000\002\000\002\000\000\000\
    \036\000\000\000\000\000\000\000\021\000\035\000\000\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\000\000\000\000\000\000\000\000\000\000\000\000\019\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\000\000\000\000\000\000\000\000\013\000\000\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\042\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\000\000\044\000\000\000\000\000\000\000\
    \000\000\000\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \017\000\000\000\000\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\030\000\027\000\000\000\000\000\026\000\029\000\029\000\
    \029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\
    \000\000\000\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \030\000\000\000\028\000\053\000\053\000\053\000\053\000\053\000\
    \053\000\053\000\053\000\053\000\053\000\000\000\043\000\000\000\
    \029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\
    \029\000\029\000\049\000\000\000\000\000\000\000\000\000\048\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \047\000\047\000\047\000\047\000\047\000\047\000\047\000\047\000\
    \047\000\047\000\000\000\000\000\000\000\000\000\032\000\054\000\
    \054\000\054\000\054\000\054\000\054\000\054\000\054\000\054\000\
    \054\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\050\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\052\000\000\000\
    \000\000\000\000\000\000\000\000\051\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\041\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    ";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\008\000\026\000\000\000\010\000\255\255\
    \030\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\255\255\010\000\000\000\030\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\005\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\016\000\000\000\000\000\000\000\000\000\003\000\
    \003\000\004\000\004\000\006\000\007\000\011\000\011\000\011\000\
    \011\000\011\000\011\000\011\000\011\000\011\000\011\000\012\000\
    \012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
    \012\000\023\000\035\000\000\000\036\000\000\000\021\000\022\000\
    \031\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \031\000\255\255\255\255\255\255\005\000\031\000\255\255\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\255\255\255\255\255\255\255\255\255\255\255\255\012\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\255\255\255\255\255\255\255\255\013\000\255\255\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\013\000\013\000\013\000\013\000\013\000\013\000\
    \013\000\013\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\019\000\039\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\019\000\019\000\019\000\019\000\019\000\
    \019\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\
    \020\000\020\000\020\000\255\255\039\000\255\255\255\255\255\255\
    \255\255\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \000\000\255\255\255\255\019\000\019\000\019\000\019\000\019\000\
    \019\000\024\000\024\000\255\255\255\255\024\000\029\000\029\000\
    \029\000\029\000\029\000\029\000\029\000\029\000\029\000\029\000\
    \255\255\255\255\020\000\020\000\020\000\020\000\020\000\020\000\
    \024\000\255\255\024\000\047\000\047\000\047\000\047\000\047\000\
    \047\000\047\000\047\000\047\000\047\000\255\255\039\000\255\255\
    \024\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
    \024\000\024\000\045\000\255\255\255\255\255\255\255\255\045\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \045\000\045\000\045\000\045\000\045\000\045\000\045\000\045\000\
    \045\000\045\000\255\255\255\255\255\255\255\255\031\000\053\000\
    \053\000\053\000\053\000\053\000\053\000\053\000\053\000\053\000\
    \053\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\045\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\045\000\255\255\
    \255\255\255\255\255\255\255\255\045\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\039\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \024\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \045\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 132 "lexer.mll"
        ( EOF )
# 312 "lexer.ml"

  | 1 ->
# 134 "lexer.mll"
         ( start_lex := start_pos_of_lexbuf lexbuf; comments 0 lexbuf )
# 317 "lexer.ml"

  | 2 ->
# 135 "lexer.mll"
        ( reset_str(); start_lex := start_pos_of_lexbuf lexbuf; string false lexbuf )
# 322 "lexer.ml"

  | 3 ->
# 136 "lexer.mll"
        ( let p = lexeme_start_p lexbuf in
          if p.pos_cnum - p.pos_bol = 0 then directive 0 lexbuf 
          else raise (Lexer_error (lex_long_range lexbuf,
            Printf.sprintf "# can only be the 1st char in a line.")) )
# 330 "lexer.ml"

  | 4 ->
# 141 "lexer.mll"
                                         ( create_token lexbuf )
# 335 "lexer.ml"

  | 5 ->
# 142 "lexer.mll"
                            ( INT (Int64.of_string (lexeme lexbuf)) )
# 340 "lexer.ml"

  | 6 ->
# 143 "lexer.mll"
                ( token lexbuf )
# 345 "lexer.ml"

  | 7 ->
# 144 "lexer.mll"
            ( newline lexbuf; token lexbuf )
# 350 "lexer.ml"

  | 8 ->
# 149 "lexer.mll"
    ( create_token lexbuf )
# 355 "lexer.ml"

  | 9 ->
let
# 151 "lexer.mll"
         c
# 361 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 151 "lexer.mll"
           ( unexpected_char lexbuf c )
# 365 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and directive state lexbuf =
   __ocaml_lex_directive_rec state lexbuf 24
and __ocaml_lex_directive_rec state lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 154 "lexer.mll"
                ( directive state lexbuf )
# 377 "lexer.ml"

  | 1 ->
# 155 "lexer.mll"
           ( if state = 0 then 
               (lnum := int_of_string (lexeme lexbuf); 
                directive 1 lexbuf)
             else if state = 2 then directive 3 lexbuf
             else raise (Lexer_error (lex_long_range lexbuf,
               Printf.sprintf "Illegal directives")) )
# 387 "lexer.ml"

  | 2 ->
# 161 "lexer.mll"
        ( if state = 1 then
            begin
              reset_str(); 
              start_lex := start_pos_of_lexbuf lexbuf; 
              string true lexbuf
            end 
          else raise (Lexer_error (lex_long_range lexbuf,
            Printf.sprintf "Illegal directives")) 
         )
# 400 "lexer.ml"

  | 3 ->
# 170 "lexer.mll"
            ( if state = 2 || state = 3 then
                begin 
                  reset_lexbuf (get_str()) !lnum lexbuf;
                  token lexbuf
                end 
              else raise (Lexer_error (lex_long_range lexbuf,
                Printf.sprintf "Illegal directives")) )
# 411 "lexer.ml"

  | 4 ->
# 177 "lexer.mll"
      ( raise (Lexer_error (lex_long_range lexbuf, 
          Printf.sprintf "Illegal directives")) )
# 417 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_directive_rec state lexbuf __ocaml_lex_state

and comments level lexbuf =
   __ocaml_lex_comments_rec level lexbuf 31
and __ocaml_lex_comments_rec level lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 181 "lexer.mll"
         ( if level = 0 then token lexbuf
	   else comments (level-1) lexbuf )
# 430 "lexer.ml"

  | 1 ->
# 183 "lexer.mll"
         ( comments (level+1) lexbuf)
# 435 "lexer.ml"

  | 2 ->
# 184 "lexer.mll"
             ( comments level lexbuf )
# 440 "lexer.ml"

  | 3 ->
# 185 "lexer.mll"
         ( newline lexbuf; comments level lexbuf )
# 445 "lexer.ml"

  | 4 ->
# 186 "lexer.mll"
         ( raise (Lexer_error (lex_long_range lexbuf,
             Printf.sprintf "comments are not closed")) )
# 451 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comments_rec level lexbuf __ocaml_lex_state

and string in_directive lexbuf =
   __ocaml_lex_string_rec in_directive lexbuf 39
and __ocaml_lex_string_rec in_directive lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 190 "lexer.mll"
         ( if in_directive = false then
             STRING (get_str())
           else directive 2 lexbuf )
# 465 "lexer.ml"

  | 1 ->
# 193 "lexer.mll"
         ( add_str(escaped lexbuf); string in_directive lexbuf )
# 470 "lexer.ml"

  | 2 ->
# 194 "lexer.mll"
         ( add_str '\n'; newline lexbuf; string in_directive lexbuf )
# 475 "lexer.ml"

  | 3 ->
# 195 "lexer.mll"
         ( raise (Lexer_error (lex_long_range lexbuf,
             Printf.sprintf "String is not terminated")) )
# 481 "lexer.ml"

  | 4 ->
# 197 "lexer.mll"
         ( add_str (Lexing.lexeme_char lexbuf 0); string in_directive lexbuf )
# 486 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_string_rec in_directive lexbuf __ocaml_lex_state

and escaped lexbuf =
   __ocaml_lex_escaped_rec lexbuf 45
and __ocaml_lex_escaped_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 200 "lexer.mll"
           ( '\n' )
# 498 "lexer.ml"

  | 1 ->
# 201 "lexer.mll"
           ( '\t' )
# 503 "lexer.ml"

  | 2 ->
# 202 "lexer.mll"
           ( '\\' )
# 508 "lexer.ml"

  | 3 ->
# 203 "lexer.mll"
           ( '\034'  )
# 513 "lexer.ml"

  | 4 ->
# 204 "lexer.mll"
           ( '\'' )
# 518 "lexer.ml"

  | 5 ->
# 206 "lexer.mll"
    (
      let x = int_of_string(lexeme lexbuf) in
      if x > 255 then
        raise (Lexer_error (lex_long_range lexbuf,
          (Printf.sprintf "%s is an illegal escaped character constant" (lexeme lexbuf))))
      else
        Char.chr x
    )
# 530 "lexer.ml"

  | 6 ->
# 215 "lexer.mll"
    ( raise (Lexer_error (lex_long_range lexbuf,
        (Printf.sprintf "%s is an illegal escaped character constant" (lexeme lexbuf) ))) )
# 536 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_escaped_rec lexbuf __ocaml_lex_state

;;

