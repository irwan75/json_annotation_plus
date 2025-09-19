import '../exception/pick_json_exception.dart';
import '../pick_json_base.dart';

extension MapExtensionPick on Pick {
  Map<String, dynamic> get asMaporThrow {
    try {
      return Map<String, dynamic>.from(value);
    } catch (e) {
      throw WrongFormatException(
        message: 'field $keys: is not Map<String, dynamic>',
      );
    }
  }

  Map<String, dynamic>? get asMaporNull {
    try {
      if (value == null) {
        return null;
      } else if (value is! Map) {
        return null;
      }
      return Map<String, dynamic>.from(value);
    } catch (e) {
      throw WrongFormatException(
        message: 'field $keys: is not Map<String, dynamic>',
      );
    }
  }

  Map<String, dynamic> get asMaporInitialValue {
    try {
      if (value != null && value is Map) {
        return Map<String, dynamic>.from(value);
      } else if (initialValue != null && initialValue is Map) {
        return Map<String, dynamic>.from(initialValue);
      }
      throw WrongInitialValueException(
        message: 'field $keys: initial value is null',
      );
    } catch (e) {
      if (e is WrongInitialValueException) {
        rethrow;
      } else {
        throw WrongFormatException(
          message: 'field $keys: initial value is not Map<String, dynamic>',
        );
      }
    }
  }
}
