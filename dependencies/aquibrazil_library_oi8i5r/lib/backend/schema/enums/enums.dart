import 'package:collection/collection.dart';
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum ComplaintStatus {
  PENDING,
  ANALYZING,
  REFUSED,
  RESOLVED,
}

enum ComplaintHistoryStatus {
  CREATED,
  RESPONSE_COMPANY,
  RESPONSE_AQUIBRAZIL,
  REFUND,
  PARTIAL_REFUND,
  DISCOUNT_CUPON,
  FINISHED,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ComplaintStatus):
      return ComplaintStatus.values.deserialize(value) as T?;
    case (ComplaintHistoryStatus):
      return ComplaintHistoryStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
