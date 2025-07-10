import 'package:collection/collection.dart';
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum ComplaintStatus {
  PENDING,
  ANALYZING,
  REFUSED,
  RESOLVED,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ComplaintStatus):
      return ComplaintStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
