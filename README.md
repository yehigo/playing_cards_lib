# playing_cards

The `playing_cards` package for Flutter allows you to easily use playing cards from a standard 52 card deck. 
This is for programtic handling of cards and for UI , follow the package https://github.com/yehigo/playing_cards untill merged in original package mentioned below. 

This is abstracted NON UI logic from the package : https://github.com/bedardjo/playing_cards 

## Getting Started

To import:

```dart
import 'package:playing_cards_lib/playing_cards_lib.dart';
```

And here is a simple usage to render a nine of clubs:

```dart
card = PlayingCard(Suit.clubs, CardValue.nine)
```

## Jokers

Jokers are modelled as two joker `CardValues` (joker_1, joker_2) in a single joker `Suit`.

You can use the `standardFiftyFourCardDeck()` function in deck.dart to create a deck with two Jokers.

