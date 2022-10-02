import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
class JsonAnnotationPlus {
  final bool? createToJson;
  const JsonAnnotationPlus({
    this.createToJson,
  });
}
