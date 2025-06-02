// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CashbackTransactionStruct extends BaseStruct {
  CashbackTransactionStruct({
    String? id,
    int? createdAt,
    String? customerId,
    TransactionType? transactionType,
    double? amount,
    String? description,
    int? updatedAt,
    String? promotionCode,
    bool? isProcessed,
    String? referenceId,
    OrderStruct? order,
  })  : _id = id,
        _createdAt = createdAt,
        _customerId = customerId,
        _transactionType = transactionType,
        _amount = amount,
        _description = description,
        _updatedAt = updatedAt,
        _promotionCode = promotionCode,
        _isProcessed = isProcessed,
        _referenceId = referenceId,
        _order = order;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "transaction_type" field.
  TransactionType? _transactionType;
  TransactionType? get transactionType => _transactionType;
  set transactionType(TransactionType? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "updated_at" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  set updatedAt(int? val) => _updatedAt = val;

  void incrementUpdatedAt(int amount) => updatedAt = updatedAt + amount;

  bool hasUpdatedAt() => _updatedAt != null;

  // "promotion_code" field.
  String? _promotionCode;
  String get promotionCode => _promotionCode ?? '';
  set promotionCode(String? val) => _promotionCode = val;

  bool hasPromotionCode() => _promotionCode != null;

  // "is_processed" field.
  bool? _isProcessed;
  bool get isProcessed => _isProcessed ?? false;
  set isProcessed(bool? val) => _isProcessed = val;

  bool hasIsProcessed() => _isProcessed != null;

  // "reference_id" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "order" field.
  OrderStruct? _order;
  OrderStruct get order => _order ?? OrderStruct();
  set order(OrderStruct? val) => _order = val;

  void updateOrder(Function(OrderStruct) updateFn) {
    updateFn(_order ??= OrderStruct());
  }

  bool hasOrder() => _order != null;

  static CashbackTransactionStruct fromMap(Map<String, dynamic> data) =>
      CashbackTransactionStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        customerId: data['customer_id'] as String?,
        transactionType: data['transaction_type'] is TransactionType
            ? data['transaction_type']
            : deserializeEnum<TransactionType>(data['transaction_type']),
        amount: castToType<double>(data['amount']),
        description: data['description'] as String?,
        updatedAt: castToType<int>(data['updated_at']),
        promotionCode: data['promotion_code'] as String?,
        isProcessed: data['is_processed'] as bool?,
        referenceId: data['reference_id'] as String?,
        order: data['order'] is OrderStruct
            ? data['order']
            : OrderStruct.maybeFromMap(data['order']),
      );

  static CashbackTransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? CashbackTransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'customer_id': _customerId,
        'transaction_type': _transactionType?.serialize(),
        'amount': _amount,
        'description': _description,
        'updated_at': _updatedAt,
        'promotion_code': _promotionCode,
        'is_processed': _isProcessed,
        'reference_id': _referenceId,
        'order': _order?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'customer_id': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'transaction_type': serializeParam(
          _transactionType,
          ParamType.Enum,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'promotion_code': serializeParam(
          _promotionCode,
          ParamType.String,
        ),
        'is_processed': serializeParam(
          _isProcessed,
          ParamType.bool,
        ),
        'reference_id': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CashbackTransactionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CashbackTransactionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        customerId: deserializeParam(
          data['customer_id'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam<TransactionType>(
          data['transaction_type'],
          ParamType.Enum,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.int,
          false,
        ),
        promotionCode: deserializeParam(
          data['promotion_code'],
          ParamType.String,
          false,
        ),
        isProcessed: deserializeParam(
          data['is_processed'],
          ParamType.bool,
          false,
        ),
        referenceId: deserializeParam(
          data['reference_id'],
          ParamType.String,
          false,
        ),
        order: deserializeStructParam(
          data['order'],
          ParamType.DataStruct,
          false,
          structBuilder: OrderStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CashbackTransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CashbackTransactionStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        customerId == other.customerId &&
        transactionType == other.transactionType &&
        amount == other.amount &&
        description == other.description &&
        updatedAt == other.updatedAt &&
        promotionCode == other.promotionCode &&
        isProcessed == other.isProcessed &&
        referenceId == other.referenceId &&
        order == other.order;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        customerId,
        transactionType,
        amount,
        description,
        updatedAt,
        promotionCode,
        isProcessed,
        referenceId,
        order
      ]);
}

CashbackTransactionStruct createCashbackTransactionStruct({
  String? id,
  int? createdAt,
  String? customerId,
  TransactionType? transactionType,
  double? amount,
  String? description,
  int? updatedAt,
  String? promotionCode,
  bool? isProcessed,
  String? referenceId,
  OrderStruct? order,
}) =>
    CashbackTransactionStruct(
      id: id,
      createdAt: createdAt,
      customerId: customerId,
      transactionType: transactionType,
      amount: amount,
      description: description,
      updatedAt: updatedAt,
      promotionCode: promotionCode,
      isProcessed: isProcessed,
      referenceId: referenceId,
      order: order ?? OrderStruct(),
    );
