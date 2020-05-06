(** The module type that defines the parsing rules for Blackjack. *)
type action = Hit of int 
            | Split of int 
            | DD of int 
            | Insurance of int 
            | Stand of int
            | Quit

val parse : string -> int -> action

exception Empty

exception Malformed
