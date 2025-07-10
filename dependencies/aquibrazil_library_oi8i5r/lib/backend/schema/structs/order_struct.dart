// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderStruct extends BaseStruct {
  OrderStruct({
    String? id,
    int? createdAt,
    int? number,
    String? type,
    String? status,
    double? subtotal,
    double? taxAndServiceFee,
    double? aquipassSaved,
    double? membershipCashback,
    double? totalAmount,
    CompanyStruct? company,
    int? itemsCount,
    List<OrdemItemStruct>? items,
    OrderProductDetailStruct? detail,
    List<OrderHistoryStruct>? orderHistory,
    bool? isReeschedule,
    String? observation,
    int? autoCancelAt,
    CustomerStruct? customer,
    RatingStruct? rating,
    CardStruct? paymentMethod,
    ComplaintStruct? complaint,
  })  : _id = id,
        _createdAt = createdAt,
        _number = number,
        _type = type,
        _status = status,
        _subtotal = subtotal,
        _taxAndServiceFee = taxAndServiceFee,
        _aquipassSaved = aquipassSaved,
        _membershipCashback = membershipCashback,
        _totalAmount = totalAmount,
        _company = company,
        _itemsCount = itemsCount,
        _items = items,
        _detail = detail,
        _orderHistory = orderHistory,
        _isReeschedule = isReeschedule,
        _observation = observation,
        _autoCancelAt = autoCancelAt,
        _customer = customer,
        _rating = rating,
        _paymentMethod = paymentMethod,
        _complaint = complaint;

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

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "tax_and_service_fee" field.
  double? _taxAndServiceFee;
  double get taxAndServiceFee => _taxAndServiceFee ?? 0.0;
  set taxAndServiceFee(double? val) => _taxAndServiceFee = val;

  void incrementTaxAndServiceFee(double amount) =>
      taxAndServiceFee = taxAndServiceFee + amount;

  bool hasTaxAndServiceFee() => _taxAndServiceFee != null;

  // "aquipass_saved" field.
  double? _aquipassSaved;
  double get aquipassSaved => _aquipassSaved ?? 0.0;
  set aquipassSaved(double? val) => _aquipassSaved = val;

  void incrementAquipassSaved(double amount) =>
      aquipassSaved = aquipassSaved + amount;

  bool hasAquipassSaved() => _aquipassSaved != null;

  // "membership_cashback" field.
  double? _membershipCashback;
  double get membershipCashback => _membershipCashback ?? 0.0;
  set membershipCashback(double? val) => _membershipCashback = val;

  void incrementMembershipCashback(double amount) =>
      membershipCashback = membershipCashback + amount;

  bool hasMembershipCashback() => _membershipCashback != null;

  // "total_amount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "items_count" field.
  int? _itemsCount;
  int get itemsCount => _itemsCount ?? 0;
  set itemsCount(int? val) => _itemsCount = val;

  void incrementItemsCount(int amount) => itemsCount = itemsCount + amount;

  bool hasItemsCount() => _itemsCount != null;

  // "items" field.
  List<OrdemItemStruct>? _items;
  List<OrdemItemStruct> get items => _items ?? const [];
  set items(List<OrdemItemStruct>? val) => _items = val;

  void updateItems(Function(List<OrdemItemStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  // "detail" field.
  OrderProductDetailStruct? _detail;
  OrderProductDetailStruct get detail => _detail ?? OrderProductDetailStruct();
  set detail(OrderProductDetailStruct? val) => _detail = val;

  void updateDetail(Function(OrderProductDetailStruct) updateFn) {
    updateFn(_detail ??= OrderProductDetailStruct());
  }

  bool hasDetail() => _detail != null;

  // "order_history" field.
  List<OrderHistoryStruct>? _orderHistory;
  List<OrderHistoryStruct> get orderHistory => _orderHistory ?? const [];
  set orderHistory(List<OrderHistoryStruct>? val) => _orderHistory = val;

  void updateOrderHistory(Function(List<OrderHistoryStruct>) updateFn) {
    updateFn(_orderHistory ??= []);
  }

  bool hasOrderHistory() => _orderHistory != null;

  // "is_reeschedule" field.
  bool? _isReeschedule;
  bool get isReeschedule => _isReeschedule ?? false;
  set isReeschedule(bool? val) => _isReeschedule = val;

  bool hasIsReeschedule() => _isReeschedule != null;

  // "observation" field.
  String? _observation;
  String get observation => _observation ?? '';
  set observation(String? val) => _observation = val;

  bool hasObservation() => _observation != null;

  // "auto_cancel_at" field.
  int? _autoCancelAt;
  int get autoCancelAt => _autoCancelAt ?? 0;
  set autoCancelAt(int? val) => _autoCancelAt = val;

  void incrementAutoCancelAt(int amount) =>
      autoCancelAt = autoCancelAt + amount;

  bool hasAutoCancelAt() => _autoCancelAt != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "rating" field.
  RatingStruct? _rating;
  RatingStruct get rating => _rating ?? RatingStruct();
  set rating(RatingStruct? val) => _rating = val;

  void updateRating(Function(RatingStruct) updateFn) {
    updateFn(_rating ??= RatingStruct());
  }

  bool hasRating() => _rating != null;

  // "payment_method" field.
  CardStruct? _paymentMethod;
  CardStruct get paymentMethod => _paymentMethod ?? CardStruct();
  set paymentMethod(CardStruct? val) => _paymentMethod = val;

  void updatePaymentMethod(Function(CardStruct) updateFn) {
    updateFn(_paymentMethod ??= CardStruct());
  }

  bool hasPaymentMethod() => _paymentMethod != null;

  // "complaint" field.
  ComplaintStruct? _complaint;
  ComplaintStruct get complaint => _complaint ?? ComplaintStruct();
  set complaint(ComplaintStruct? val) => _complaint = val;

  void updateComplaint(Function(ComplaintStruct) updateFn) {
    updateFn(_complaint ??= ComplaintStruct());
  }

  bool hasComplaint() => _complaint != null;

  static OrderStruct fromMap(Map<String, dynamic> data) => OrderStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        number: castToType<int>(data['number']),
        type: data['type'] as String?,
        status: data['status'] as String?,
        subtotal: castToType<double>(data['subtotal']),
        taxAndServiceFee: castToType<double>(data['tax_and_service_fee']),
        aquipassSaved: castToType<double>(data['aquipass_saved']),
        membershipCashback: castToType<double>(data['membership_cashback']),
        totalAmount: castToType<double>(data['total_amount']),
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        itemsCount: castToType<int>(data['items_count']),
        items: getStructList(
          data['items'],
          OrdemItemStruct.fromMap,
        ),
        detail: data['detail'] is OrderProductDetailStruct
            ? data['detail']
            : OrderProductDetailStruct.maybeFromMap(data['detail']),
        orderHistory: getStructList(
          data['order_history'],
          OrderHistoryStruct.fromMap,
        ),
        isReeschedule: data['is_reeschedule'] as bool?,
        observation: data['observation'] as String?,
        autoCancelAt: castToType<int>(data['auto_cancel_at']),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
        rating: data['rating'] is RatingStruct
            ? data['rating']
            : RatingStruct.maybeFromMap(data['rating']),
        paymentMethod: data['payment_method'] is CardStruct
            ? data['payment_method']
            : CardStruct.maybeFromMap(data['payment_method']),
        complaint: data['complaint'] is ComplaintStruct
            ? data['complaint']
            : ComplaintStruct.maybeFromMap(data['complaint']),
      );

  static OrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'number': _number,
        'type': _type,
        'status': _status,
        'subtotal': _subtotal,
        'tax_and_service_fee': _taxAndServiceFee,
        'aquipass_saved': _aquipassSaved,
        'membership_cashback': _membershipCashback,
        'total_amount': _totalAmount,
        'company': _company?.toMap(),
        'items_count': _itemsCount,
        'items': _items?.map((e) => e.toMap()).toList(),
        'detail': _detail?.toMap(),
        'order_history': _orderHistory?.map((e) => e.toMap()).toList(),
        'is_reeschedule': _isReeschedule,
        'observation': _observation,
        'auto_cancel_at': _autoCancelAt,
        'customer': _customer?.toMap(),
        'rating': _rating?.toMap(),
        'payment_method': _paymentMethod?.toMap(),
        'complaint': _complaint?.toMap(),
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
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'tax_and_service_fee': serializeParam(
          _taxAndServiceFee,
          ParamType.double,
        ),
        'aquipass_saved': serializeParam(
          _aquipassSaved,
          ParamType.double,
        ),
        'membership_cashback': serializeParam(
          _membershipCashback,
          ParamType.double,
        ),
        'total_amount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'items_count': serializeParam(
          _itemsCount,
          ParamType.int,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
        'detail': serializeParam(
          _detail,
          ParamType.DataStruct,
        ),
        'order_history': serializeParam(
          _orderHistory,
          ParamType.DataStruct,
          isList: true,
        ),
        'is_reeschedule': serializeParam(
          _isReeschedule,
          ParamType.bool,
        ),
        'observation': serializeParam(
          _observation,
          ParamType.String,
        ),
        'auto_cancel_at': serializeParam(
          _autoCancelAt,
          ParamType.int,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.DataStruct,
        ),
        'payment_method': serializeParam(
          _paymentMethod,
          ParamType.DataStruct,
        ),
        'complaint': serializeParam(
          _complaint,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStruct(
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
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        taxAndServiceFee: deserializeParam(
          data['tax_and_service_fee'],
          ParamType.double,
          false,
        ),
        aquipassSaved: deserializeParam(
          data['aquipass_saved'],
          ParamType.double,
          false,
        ),
        membershipCashback: deserializeParam(
          data['membership_cashback'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['total_amount'],
          ParamType.double,
          false,
        ),
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        itemsCount: deserializeParam(
          data['items_count'],
          ParamType.int,
          false,
        ),
        items: deserializeStructParam<OrdemItemStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: OrdemItemStruct.fromSerializableMap,
        ),
        detail: deserializeStructParam(
          data['detail'],
          ParamType.DataStruct,
          false,
          structBuilder: OrderProductDetailStruct.fromSerializableMap,
        ),
        orderHistory: deserializeStructParam<OrderHistoryStruct>(
          data['order_history'],
          ParamType.DataStruct,
          true,
          structBuilder: OrderHistoryStruct.fromSerializableMap,
        ),
        isReeschedule: deserializeParam(
          data['is_reeschedule'],
          ParamType.bool,
          false,
        ),
        observation: deserializeParam(
          data['observation'],
          ParamType.String,
          false,
        ),
        autoCancelAt: deserializeParam(
          data['auto_cancel_at'],
          ParamType.int,
          false,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        rating: deserializeStructParam(
          data['rating'],
          ParamType.DataStruct,
          false,
          structBuilder: RatingStruct.fromSerializableMap,
        ),
        paymentMethod: deserializeStructParam(
          data['payment_method'],
          ParamType.DataStruct,
          false,
          structBuilder: CardStruct.fromSerializableMap,
        ),
        complaint: deserializeStructParam(
          data['complaint'],
          ParamType.DataStruct,
          false,
          structBuilder: ComplaintStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrderStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        number == other.number &&
        type == other.type &&
        status == other.status &&
        subtotal == other.subtotal &&
        taxAndServiceFee == other.taxAndServiceFee &&
        aquipassSaved == other.aquipassSaved &&
        membershipCashback == other.membershipCashback &&
        totalAmount == other.totalAmount &&
        company == other.company &&
        itemsCount == other.itemsCount &&
        listEquality.equals(items, other.items) &&
        detail == other.detail &&
        listEquality.equals(orderHistory, other.orderHistory) &&
        isReeschedule == other.isReeschedule &&
        observation == other.observation &&
        autoCancelAt == other.autoCancelAt &&
        customer == other.customer &&
        rating == other.rating &&
        paymentMethod == other.paymentMethod &&
        complaint == other.complaint;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        number,
        type,
        status,
        subtotal,
        taxAndServiceFee,
        aquipassSaved,
        membershipCashback,
        totalAmount,
        company,
        itemsCount,
        items,
        detail,
        orderHistory,
        isReeschedule,
        observation,
        autoCancelAt,
        customer,
        rating,
        paymentMethod,
        complaint
      ]);
}

OrderStruct createOrderStruct({
  String? id,
  int? createdAt,
  int? number,
  String? type,
  String? status,
  double? subtotal,
  double? taxAndServiceFee,
  double? aquipassSaved,
  double? membershipCashback,
  double? totalAmount,
  CompanyStruct? company,
  int? itemsCount,
  OrderProductDetailStruct? detail,
  bool? isReeschedule,
  String? observation,
  int? autoCancelAt,
  CustomerStruct? customer,
  RatingStruct? rating,
  CardStruct? paymentMethod,
  ComplaintStruct? complaint,
}) =>
    OrderStruct(
      id: id,
      createdAt: createdAt,
      number: number,
      type: type,
      status: status,
      subtotal: subtotal,
      taxAndServiceFee: taxAndServiceFee,
      aquipassSaved: aquipassSaved,
      membershipCashback: membershipCashback,
      totalAmount: totalAmount,
      company: company ?? CompanyStruct(),
      itemsCount: itemsCount,
      detail: detail ?? OrderProductDetailStruct(),
      isReeschedule: isReeschedule,
      observation: observation,
      autoCancelAt: autoCancelAt,
      customer: customer ?? CustomerStruct(),
      rating: rating ?? RatingStruct(),
      paymentMethod: paymentMethod ?? CardStruct(),
      complaint: complaint ?? ComplaintStruct(),
    );
