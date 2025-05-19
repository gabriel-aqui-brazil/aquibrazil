// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends BaseStruct {
  CompanyStruct({
    String? id,
    String? name,
    String? phone,
    String? description,
    String? profilePhotoUrl,
    String? coverPhotoUrl,
    int? defaultDiscount,
    String? primaryCategoryId,
    String? secondaryCategoryId,
    String? terciaryCategoryId,
    AddressStruct? address,
    double? extraDiscount,
    bool? hasDiscountProduct,
    List<OperatingHourStruct>? operatingHour,
    double? distance,
    double? deliveryPrice,
    double? maxDeliveryDistance,
  })  : _id = id,
        _name = name,
        _phone = phone,
        _description = description,
        _profilePhotoUrl = profilePhotoUrl,
        _coverPhotoUrl = coverPhotoUrl,
        _defaultDiscount = defaultDiscount,
        _primaryCategoryId = primaryCategoryId,
        _secondaryCategoryId = secondaryCategoryId,
        _terciaryCategoryId = terciaryCategoryId,
        _address = address,
        _extraDiscount = extraDiscount,
        _hasDiscountProduct = hasDiscountProduct,
        _operatingHour = operatingHour,
        _distance = distance,
        _deliveryPrice = deliveryPrice,
        _maxDeliveryDistance = maxDeliveryDistance;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "profile_photo_url" field.
  String? _profilePhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl ?? '';
  set profilePhotoUrl(String? val) => _profilePhotoUrl = val;

  bool hasProfilePhotoUrl() => _profilePhotoUrl != null;

  // "cover_photo_url" field.
  String? _coverPhotoUrl;
  String get coverPhotoUrl => _coverPhotoUrl ?? '';
  set coverPhotoUrl(String? val) => _coverPhotoUrl = val;

  bool hasCoverPhotoUrl() => _coverPhotoUrl != null;

  // "default_discount" field.
  int? _defaultDiscount;
  int get defaultDiscount => _defaultDiscount ?? 0;
  set defaultDiscount(int? val) => _defaultDiscount = val;

  void incrementDefaultDiscount(int amount) =>
      defaultDiscount = defaultDiscount + amount;

  bool hasDefaultDiscount() => _defaultDiscount != null;

  // "primary_category_id" field.
  String? _primaryCategoryId;
  String get primaryCategoryId => _primaryCategoryId ?? '';
  set primaryCategoryId(String? val) => _primaryCategoryId = val;

  bool hasPrimaryCategoryId() => _primaryCategoryId != null;

  // "secondary_category_id" field.
  String? _secondaryCategoryId;
  String get secondaryCategoryId => _secondaryCategoryId ?? '';
  set secondaryCategoryId(String? val) => _secondaryCategoryId = val;

  bool hasSecondaryCategoryId() => _secondaryCategoryId != null;

  // "terciary_category_id" field.
  String? _terciaryCategoryId;
  String get terciaryCategoryId => _terciaryCategoryId ?? '';
  set terciaryCategoryId(String? val) => _terciaryCategoryId = val;

  bool hasTerciaryCategoryId() => _terciaryCategoryId != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "extra_discount" field.
  double? _extraDiscount;
  double get extraDiscount => _extraDiscount ?? 0.0;
  set extraDiscount(double? val) => _extraDiscount = val;

  void incrementExtraDiscount(double amount) =>
      extraDiscount = extraDiscount + amount;

  bool hasExtraDiscount() => _extraDiscount != null;

  // "has_discount_product" field.
  bool? _hasDiscountProduct;
  bool get hasDiscountProduct => _hasDiscountProduct ?? false;
  set hasDiscountProduct(bool? val) => _hasDiscountProduct = val;

  bool hasHasDiscountProduct() => _hasDiscountProduct != null;

  // "operating_hour" field.
  List<OperatingHourStruct>? _operatingHour;
  List<OperatingHourStruct> get operatingHour => _operatingHour ?? const [];
  set operatingHour(List<OperatingHourStruct>? val) => _operatingHour = val;

  void updateOperatingHour(Function(List<OperatingHourStruct>) updateFn) {
    updateFn(_operatingHour ??= []);
  }

  bool hasOperatingHour() => _operatingHour != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "delivery_price" field.
  double? _deliveryPrice;
  double get deliveryPrice => _deliveryPrice ?? 0.0;
  set deliveryPrice(double? val) => _deliveryPrice = val;

  void incrementDeliveryPrice(double amount) =>
      deliveryPrice = deliveryPrice + amount;

  bool hasDeliveryPrice() => _deliveryPrice != null;

  // "max_delivery_distance" field.
  double? _maxDeliveryDistance;
  double get maxDeliveryDistance => _maxDeliveryDistance ?? 0.0;
  set maxDeliveryDistance(double? val) => _maxDeliveryDistance = val;

  void incrementMaxDeliveryDistance(double amount) =>
      maxDeliveryDistance = maxDeliveryDistance + amount;

  bool hasMaxDeliveryDistance() => _maxDeliveryDistance != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        description: data['description'] as String?,
        profilePhotoUrl: data['profile_photo_url'] as String?,
        coverPhotoUrl: data['cover_photo_url'] as String?,
        defaultDiscount: castToType<int>(data['default_discount']),
        primaryCategoryId: data['primary_category_id'] as String?,
        secondaryCategoryId: data['secondary_category_id'] as String?,
        terciaryCategoryId: data['terciary_category_id'] as String?,
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        extraDiscount: castToType<double>(data['extra_discount']),
        hasDiscountProduct: data['has_discount_product'] as bool?,
        operatingHour: getStructList(
          data['operating_hour'],
          OperatingHourStruct.fromMap,
        ),
        distance: castToType<double>(data['distance']),
        deliveryPrice: castToType<double>(data['delivery_price']),
        maxDeliveryDistance: castToType<double>(data['max_delivery_distance']),
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'phone': _phone,
        'description': _description,
        'profile_photo_url': _profilePhotoUrl,
        'cover_photo_url': _coverPhotoUrl,
        'default_discount': _defaultDiscount,
        'primary_category_id': _primaryCategoryId,
        'secondary_category_id': _secondaryCategoryId,
        'terciary_category_id': _terciaryCategoryId,
        'address': _address?.toMap(),
        'extra_discount': _extraDiscount,
        'has_discount_product': _hasDiscountProduct,
        'operating_hour': _operatingHour?.map((e) => e.toMap()).toList(),
        'distance': _distance,
        'delivery_price': _deliveryPrice,
        'max_delivery_distance': _maxDeliveryDistance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'profile_photo_url': serializeParam(
          _profilePhotoUrl,
          ParamType.String,
        ),
        'cover_photo_url': serializeParam(
          _coverPhotoUrl,
          ParamType.String,
        ),
        'default_discount': serializeParam(
          _defaultDiscount,
          ParamType.int,
        ),
        'primary_category_id': serializeParam(
          _primaryCategoryId,
          ParamType.String,
        ),
        'secondary_category_id': serializeParam(
          _secondaryCategoryId,
          ParamType.String,
        ),
        'terciary_category_id': serializeParam(
          _terciaryCategoryId,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'extra_discount': serializeParam(
          _extraDiscount,
          ParamType.double,
        ),
        'has_discount_product': serializeParam(
          _hasDiscountProduct,
          ParamType.bool,
        ),
        'operating_hour': serializeParam(
          _operatingHour,
          ParamType.DataStruct,
          isList: true,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'delivery_price': serializeParam(
          _deliveryPrice,
          ParamType.double,
        ),
        'max_delivery_distance': serializeParam(
          _maxDeliveryDistance,
          ParamType.double,
        ),
      }.withoutNulls;

  static CompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        profilePhotoUrl: deserializeParam(
          data['profile_photo_url'],
          ParamType.String,
          false,
        ),
        coverPhotoUrl: deserializeParam(
          data['cover_photo_url'],
          ParamType.String,
          false,
        ),
        defaultDiscount: deserializeParam(
          data['default_discount'],
          ParamType.int,
          false,
        ),
        primaryCategoryId: deserializeParam(
          data['primary_category_id'],
          ParamType.String,
          false,
        ),
        secondaryCategoryId: deserializeParam(
          data['secondary_category_id'],
          ParamType.String,
          false,
        ),
        terciaryCategoryId: deserializeParam(
          data['terciary_category_id'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        extraDiscount: deserializeParam(
          data['extra_discount'],
          ParamType.double,
          false,
        ),
        hasDiscountProduct: deserializeParam(
          data['has_discount_product'],
          ParamType.bool,
          false,
        ),
        operatingHour: deserializeStructParam<OperatingHourStruct>(
          data['operating_hour'],
          ParamType.DataStruct,
          true,
          structBuilder: OperatingHourStruct.fromSerializableMap,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        deliveryPrice: deserializeParam(
          data['delivery_price'],
          ParamType.double,
          false,
        ),
        maxDeliveryDistance: deserializeParam(
          data['max_delivery_distance'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyStruct &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        description == other.description &&
        profilePhotoUrl == other.profilePhotoUrl &&
        coverPhotoUrl == other.coverPhotoUrl &&
        defaultDiscount == other.defaultDiscount &&
        primaryCategoryId == other.primaryCategoryId &&
        secondaryCategoryId == other.secondaryCategoryId &&
        terciaryCategoryId == other.terciaryCategoryId &&
        address == other.address &&
        extraDiscount == other.extraDiscount &&
        hasDiscountProduct == other.hasDiscountProduct &&
        listEquality.equals(operatingHour, other.operatingHour) &&
        distance == other.distance &&
        deliveryPrice == other.deliveryPrice &&
        maxDeliveryDistance == other.maxDeliveryDistance;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        phone,
        description,
        profilePhotoUrl,
        coverPhotoUrl,
        defaultDiscount,
        primaryCategoryId,
        secondaryCategoryId,
        terciaryCategoryId,
        address,
        extraDiscount,
        hasDiscountProduct,
        operatingHour,
        distance,
        deliveryPrice,
        maxDeliveryDistance
      ]);
}

CompanyStruct createCompanyStruct({
  String? id,
  String? name,
  String? phone,
  String? description,
  String? profilePhotoUrl,
  String? coverPhotoUrl,
  int? defaultDiscount,
  String? primaryCategoryId,
  String? secondaryCategoryId,
  String? terciaryCategoryId,
  AddressStruct? address,
  double? extraDiscount,
  bool? hasDiscountProduct,
  double? distance,
  double? deliveryPrice,
  double? maxDeliveryDistance,
}) =>
    CompanyStruct(
      id: id,
      name: name,
      phone: phone,
      description: description,
      profilePhotoUrl: profilePhotoUrl,
      coverPhotoUrl: coverPhotoUrl,
      defaultDiscount: defaultDiscount,
      primaryCategoryId: primaryCategoryId,
      secondaryCategoryId: secondaryCategoryId,
      terciaryCategoryId: terciaryCategoryId,
      address: address ?? AddressStruct(),
      extraDiscount: extraDiscount,
      hasDiscountProduct: hasDiscountProduct,
      distance: distance,
      deliveryPrice: deliveryPrice,
      maxDeliveryDistance: maxDeliveryDistance,
    );
