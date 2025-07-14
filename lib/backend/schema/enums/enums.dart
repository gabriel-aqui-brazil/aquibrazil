import 'package:collection/collection.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum Categories {
  TODOS,
  VIAGENS,
  ENTRETENIMENTO,
  RESTAURANTES,
  TRANSPORTES,
  ALUGUEL,
  HOSPEDAGEM,
  TELEFONIA,
  COMPRAS,
}

enum ComplaintStatus {
  PENDING,
  ANALYZING,
  REFUSED,
  RESOLVED,
}

enum ComplaintReason {
  PRODUCT_ARRIVED_COLD,
  WRONG_PRODUCT,
  INCOMPLETE_PRODUCT,
  DAMAGED_PRODUCT,
  DELAY_IN_DELIVERY,
  OTHER,
}

enum TransactionType {
  earn,
  redeem,
  refund,
  redeemAzul,
}

enum Citys {
  Orlando,
  Miami,
  Boston,
}

enum Idioma {
  Ingles,
  Portugues,
  Espanhol,
}

enum ShowItemsOrdem {
  no,
}

enum HiddenItemsOrder {
  yes,
  no,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Categories):
      return Categories.values.deserialize(value) as T?;
    case (ComplaintStatus):
      return ComplaintStatus.values.deserialize(value) as T?;
    case (ComplaintReason):
      return ComplaintReason.values.deserialize(value) as T?;
    case (TransactionType):
      return TransactionType.values.deserialize(value) as T?;
    case (Citys):
      return Citys.values.deserialize(value) as T?;
    case (Idioma):
      return Idioma.values.deserialize(value) as T?;
    case (ShowItemsOrdem):
      return ShowItemsOrdem.values.deserialize(value) as T?;
    case (HiddenItemsOrder):
      return HiddenItemsOrder.values.deserialize(value) as T?;
    case (aquibrazil_library_oi8i5r_enums.ComplaintStatus):
      return aquibrazil_library_oi8i5r_enums.ComplaintStatus.values
          .deserialize(value) as T?;
    case (aquibrazil_library_oi8i5r_enums.ComplaintHistoryStatus):
      return aquibrazil_library_oi8i5r_enums.ComplaintHistoryStatus.values
          .deserialize(value) as T?;
    default:
      return null;
  }
}
