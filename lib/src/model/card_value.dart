import 'package:playing_cards_lib/src/basic_abstracts/serializable_model.dart';

/// Thirteen standard card ranks.
enum CardValue implements SerializableModel {
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  jack,
  queen,
  king,
  ace,
  joker_1,
  joker_2;

  static CardValue fromJson(String name) {
    switch (name) {
      case "two":
        return CardValue.two;
      case "three":
        return CardValue.three;
      case "four":
        return CardValue.four;
      case "five":
        return CardValue.five;
      case "six":
        return CardValue.six;
      case "seven":
        return CardValue.seven;
      case "eight":
        return CardValue.eight;
      case "nine":
        return CardValue.nine;
      case "ten":
        return CardValue.ten;
      case "jack":
        return CardValue.jack;
      case "queen":
        return CardValue.queen;
      case "king":
        return CardValue.king;
      case "ace":
        return CardValue.ace;
      case "joker_1":
        return CardValue.joker_1;
      case "joker_2":
        return CardValue.joker_2;

      default:
        throw ArgumentError('Value "$name" cannot be converted to "CardValue"');
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => name;
}

// all CardValue values except CardValue.joker_1 and CardValue.joker_2.
const SUITED_VALUES = [
  CardValue.two,
  CardValue.three,
  CardValue.four,
  CardValue.five,
  CardValue.six,
  CardValue.seven,
  CardValue.eight,
  CardValue.nine,
  CardValue.ten,
  CardValue.jack,
  CardValue.queen,
  CardValue.king,
  CardValue.ace,
];

const JOKER_VALUES = [CardValue.joker_1, CardValue.joker_2];
