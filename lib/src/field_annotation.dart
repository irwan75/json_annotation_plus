import 'package:meta/meta_meta.dart';

@Target({TargetKind.field, TargetKind.getter})
class JsonKey {
  final Object? defaultValue;
  final bool? ignore;
  final String? name;
  const JsonKey({
    this.defaultValue,
    this.ignore,
    this.name,
  });
}
