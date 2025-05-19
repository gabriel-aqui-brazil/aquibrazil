import 'package:collection/collection.dart';
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum Idioma {
  Ingles,
  Portugues,
  Espanhol,
}

enum HiddenItemsOrder {
  yes,
  no,
}

enum ShowItemsOrdem {
  no,
}

enum Citys {
  Orlando,
  Miami,
  Boston,
}

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

enum TransactionType {
  earn,
  redeem,
  refund,
  redeemAzul,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Idioma):
      return Idioma.values.deserialize(value) as T?;
    case (HiddenItemsOrder):
      return HiddenItemsOrder.values.deserialize(value) as T?;
    case (ShowItemsOrdem):
      return ShowItemsOrdem.values.deserialize(value) as T?;
    case (Citys):
      return Citys.values.deserialize(value) as T?;
    case (Categories):
      return Categories.values.deserialize(value) as T?;
    case (TransactionType):
      return TransactionType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
