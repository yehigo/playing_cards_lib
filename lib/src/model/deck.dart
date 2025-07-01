

import 'package:playing_cards_lib/src/model/card_value.dart';
import 'package:playing_cards_lib/src/model/playing_card.dart';
import 'package:playing_cards_lib/src/model/suit.dart';

/// Generates a standard 52 card deck.
List<PlayingCard> standardFiftyTwoCardDeck() {
  List<PlayingCard> cards = [];
  for (Suit suit in STANDARD_SUITS) {
    for (CardValue v in SUITED_VALUES) {
      cards.add(PlayingCard(suit, v));
    }
  }

  return cards;
}

// Standard fifty two card deck + two jokers.
List<PlayingCard> standardFiftyFourCardDeck() {
  List<PlayingCard> cards = standardFiftyTwoCardDeck();

  for (CardValue v in JOKER_VALUES) {
    cards.add(PlayingCard(Suit.joker, v));
  }
  return cards;
}
