/// The [SerializableModel] is the base interface for all serializable objects, except primitives.
abstract interface class SerializableModel {
  /// Returns a serialized JSON structure of the model.
  dynamic toJson();
}