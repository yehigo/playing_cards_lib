// ignore: depend_on_referenced_packages
import 'package:playing_cards_lib/src/basic_abstracts/serializable_model.dart';
import 'package:playing_cards_lib/src/model/card_value.dart';
import 'package:playing_cards_lib/src/model/suit.dart';

// Simple card model.
class PlayingCard implements SerializableModel {
  // The suit of the card.
  final Suit suit;
  // The rank of the card. ace->king.
  final CardValue value;

  // Creates a playing card.
  PlayingCard(this.suit, this.value);

  // Create a deep copy of object.
  PlayingCard copyWith({Suit? suit, CardValue? value}) {
    return PlayingCard(suit ?? this.suit, value ?? this.value);
  }

  // Create card from json value.
  static PlayingCard fromJson(Map<String, dynamic> jsonSerialization) {
    return PlayingCard(
      Suit.fromJson(jsonSerialization['Suit']),
      CardValue.fromJson(jsonSerialization['CardValue']),
    );
  }

  // Convert card to json
  @override
  Map<String, dynamic> toJson() {
    return {'Suit': suit.toJson(), 'CardValue': value.toJson()};
  }

}
