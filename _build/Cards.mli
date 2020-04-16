(** Represents the color of a card*)
type color = | Red | Black

(** Represents the suit of the card*)
type suit = | Heart  | Spade | Diamond | Club

(** Represents the card rank*)
type rank = 
  | Num of int
  | Jack
  | Queen
  | King
  | Ace

(** Tuples of suit and rank to represent a card*)
type card

(** The deck contains a specified amount of cards to start*)
type deck = card list

(** Returns one standard 52 card deck*)
val get_standard_deck: deck

(** Randomizes the order of the cards in the game deck*)
val shuffle: deck -> deck

(** Removes the top card from the deck and returns it*)
val deal_one: deck -> (deck * card) option

(** moves a card from the first deck in the tuple to the other
    Requires the card to be in the first deck
    Raises exception Card_not_in_deck*)
val transfer_card: (deck*deck) -> card -> (deck*deck)

(** Combines decks into one for the game if game is played with several decks*)
val combine_decks: deck list -> deck

(** Adds all the user hands back to the deck*)
val replace_cards: card list list -> deck -> deck