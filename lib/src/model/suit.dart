// The four standard suits + a special "joker" suit.
import 'package:playing_cards_lib/src/basic_abstracts/serializable_model.dart';

enum Suit implements SerializableModel {
  spades,
  hearts,
  diamonds,
  clubs,
  joker;

  static Suit fromJson(String name) {
    switch (name) {
      case "spades":
        return Suit.spades;
      case "hearts":
        return Suit.hearts;
      case "diamonds":
        return Suit.diamonds;
      case "clubs":
        return Suit.clubs;
      case "joker":
        return Suit.joker;
      default:
        throw ArgumentError('Value "$name" cannot be converted to "Suit"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}

const STANDARD_SUITS = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs];
