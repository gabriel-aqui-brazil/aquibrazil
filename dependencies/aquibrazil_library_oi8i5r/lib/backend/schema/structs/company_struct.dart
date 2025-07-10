// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyStruct extends BaseStruct {
  CompanyStruct({
    String? id,
    String? name,
    String? coverPhotoUrl,
    String? profilePhotoUrl,
    String? type,
    AddressStruct? address,
    bool? isFavorite,
    double? distance,
    int? defaultDiscount,
    bool? isOpen,
    bool? hasDiscountProduct,
    double? extraDiscount,
    String? deliveryLogistics,
    double? priceDelivery,
    String? deliveryType,
    CategoryStruct? primaryCategory,
    CategoryStruct? terciaryCategory,
    FavoriteCompanyStruct? favoriteCompany,
    double? maxDeliveryDistance,
    double? sumDiscount,
    String? description,
    List<OperatingHourStruct>? operatingHour,
    bool? open24,
    double? rating,
  })  : _id = id,
        _name = name,
        _coverPhotoUrl = coverPhotoUrl,
        _profilePhotoUrl = profilePhotoUrl,
        _type = type,
        _address = address,
        _isFavorite = isFavorite,
        _distance = distance,
        _defaultDiscount = defaultDiscount,
        _isOpen = isOpen,
        _hasDiscountProduct = hasDiscountProduct,
        _extraDiscount = extraDiscount,
        _deliveryLogistics = deliveryLogistics,
        _priceDelivery = priceDelivery,
        _deliveryType = deliveryType,
        _primaryCategory = primaryCategory,
        _terciaryCategory = terciaryCategory,
        _favoriteCompany = favoriteCompany,
        _maxDeliveryDistance = maxDeliveryDistance,
        _sumDiscount = sumDiscount,
        _description = description,
        _operatingHour = operatingHour,
        _open24 = open24,
        _rating = rating;

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

  // "cover_photo_url" field.
  String? _coverPhotoUrl;
  String get coverPhotoUrl => _coverPhotoUrl ?? '';
  set coverPhotoUrl(String? val) => _coverPhotoUrl = val;

  bool hasCoverPhotoUrl() => _coverPhotoUrl != null;

  // "profile_photo_url" field.
  String? _profilePhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl ?? '';
  set profilePhotoUrl(String? val) => _profilePhotoUrl = val;

  bool hasProfilePhotoUrl() => _profilePhotoUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;

  bool hasIsFavorite() => _isFavorite != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "default_discount" field.
  int? _defaultDiscount;
  int get defaultDiscount => _defaultDiscount ?? 0;
  set defaultDiscount(int? val) => _defaultDiscount = val;

  void incrementDefaultDiscount(int amount) =>
      defaultDiscount = defaultDiscount + amount;

  bool hasDefaultDiscount() => _defaultDiscount != null;

  // "is_open" field.
  bool? _isOpen;
  bool get isOpen => _isOpen ?? false;
  set isOpen(bool? val) => _isOpen = val;

  bool hasIsOpen() => _isOpen != null;

  // "has_discount_product" field.
  bool? _hasDiscountProduct;
  bool get hasDiscountProduct => _hasDiscountProduct ?? false;
  set hasDiscountProduct(bool? val) => _hasDiscountProduct = val;

  bool hasHasDiscountProduct() => _hasDiscountProduct != null;

  // "extra_discount" field.
  double? _extraDiscount;
  double get extraDiscount => _extraDiscount ?? 0.0;
  set extraDiscount(double? val) => _extraDiscount = val;

  void incrementExtraDiscount(double amount) =>
      extraDiscount = extraDiscount + amount;

  bool hasExtraDiscount() => _extraDiscount != null;

  // "delivery_logistics" field.
  String? _deliveryLogistics;
  String get deliveryLogistics => _deliveryLogistics ?? '';
  set deliveryLogistics(String? val) => _deliveryLogistics = val;

  bool hasDeliveryLogistics() => _deliveryLogistics != null;

  // "price_delivery" field.
  double? _priceDelivery;
  double get priceDelivery => _priceDelivery ?? 0.0;
  set priceDelivery(double? val) => _priceDelivery = val;

  void incrementPriceDelivery(double amount) =>
      priceDelivery = priceDelivery + amount;

  bool hasPriceDelivery() => _priceDelivery != null;

  // "delivery_type" field.
  String? _deliveryType;
  String get deliveryType => _deliveryType ?? '';
  set deliveryType(String? val) => _deliveryType = val;

  bool hasDeliveryType() => _deliveryType != null;

  // "primary_category" field.
  CategoryStruct? _primaryCategory;
  CategoryStruct get primaryCategory => _primaryCategory ?? CategoryStruct();
  set primaryCategory(CategoryStruct? val) => _primaryCategory = val;

  void updatePrimaryCategory(Function(CategoryStruct) updateFn) {
    updateFn(_primaryCategory ??= CategoryStruct());
  }

  bool hasPrimaryCategory() => _primaryCategory != null;

  // "terciary_category" field.
  CategoryStruct? _terciaryCategory;
  CategoryStruct get terciaryCategory => _terciaryCategory ?? CategoryStruct();
  set terciaryCategory(CategoryStruct? val) => _terciaryCategory = val;

  void updateTerciaryCategory(Function(CategoryStruct) updateFn) {
    updateFn(_terciaryCategory ??= CategoryStruct());
  }

  bool hasTerciaryCategory() => _terciaryCategory != null;

  // "favorite_company" field.
  FavoriteCompanyStruct? _favoriteCompany;
  FavoriteCompanyStruct get favoriteCompany =>
      _favoriteCompany ?? FavoriteCompanyStruct();
  set favoriteCompany(FavoriteCompanyStruct? val) => _favoriteCompany = val;

  void updateFavoriteCompany(Function(FavoriteCompanyStruct) updateFn) {
    updateFn(_favoriteCompany ??= FavoriteCompanyStruct());
  }

  bool hasFavoriteCompany() => _favoriteCompany != null;

  // "max_delivery_distance" field.
  double? _maxDeliveryDistance;
  double get maxDeliveryDistance => _maxDeliveryDistance ?? 0.0;
  set maxDeliveryDistance(double? val) => _maxDeliveryDistance = val;

  void incrementMaxDeliveryDistance(double amount) =>
      maxDeliveryDistance = maxDeliveryDistance + amount;

  bool hasMaxDeliveryDistance() => _maxDeliveryDistance != null;

  // "sum_discount" field.
  double? _sumDiscount;
  double get sumDiscount => _sumDiscount ?? 0.0;
  set sumDiscount(double? val) => _sumDiscount = val;

  void incrementSumDiscount(double amount) =>
      sumDiscount = sumDiscount + amount;

  bool hasSumDiscount() => _sumDiscount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "operating_hour" field.
  List<OperatingHourStruct>? _operatingHour;
  List<OperatingHourStruct> get operatingHour => _operatingHour ?? const [];
  set operatingHour(List<OperatingHourStruct>? val) => _operatingHour = val;

  void updateOperatingHour(Function(List<OperatingHourStruct>) updateFn) {
    updateFn(_operatingHour ??= []);
  }

  bool hasOperatingHour() => _operatingHour != null;

  // "open_24" field.
  bool? _open24;
  bool get open24 => _open24 ?? false;
  set open24(bool? val) => _open24 = val;

  bool hasOpen24() => _open24 != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static CompanyStruct fromMap(Map<String, dynamic> data) => CompanyStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        coverPhotoUrl: data['cover_photo_url'] as String?,
        profilePhotoUrl: data['profile_photo_url'] as String?,
        type: data['type'] as String?,
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        isFavorite: data['is_favorite'] as bool?,
        distance: castToType<double>(data['distance']),
        defaultDiscount: castToType<int>(data['default_discount']),
        isOpen: data['is_open'] as bool?,
        hasDiscountProduct: data['has_discount_product'] as bool?,
        extraDiscount: castToType<double>(data['extra_discount']),
        deliveryLogistics: data['delivery_logistics'] as String?,
        priceDelivery: castToType<double>(data['price_delivery']),
        deliveryType: data['delivery_type'] as String?,
        primaryCategory: data['primary_category'] is CategoryStruct
            ? data['primary_category']
            : CategoryStruct.maybeFromMap(data['primary_category']),
        terciaryCategory: data['terciary_category'] is CategoryStruct
            ? data['terciary_category']
            : CategoryStruct.maybeFromMap(data['terciary_category']),
        favoriteCompany: data['favorite_company'] is FavoriteCompanyStruct
            ? data['favorite_company']
            : FavoriteCompanyStruct.maybeFromMap(data['favorite_company']),
        maxDeliveryDistance: castToType<double>(data['max_delivery_distance']),
        sumDiscount: castToType<double>(data['sum_discount']),
        description: data['description'] as String?,
        operatingHour: getStructList(
          data['operating_hour'],
          OperatingHourStruct.fromMap,
        ),
        open24: data['open_24'] as bool?,
        rating: castToType<double>(data['rating']),
      );

  static CompanyStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompanyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'cover_photo_url': _coverPhotoUrl,
        'profile_photo_url': _profilePhotoUrl,
        'type': _type,
        'address': _address?.toMap(),
        'is_favorite': _isFavorite,
        'distance': _distance,
        'default_discount': _defaultDiscount,
        'is_open': _isOpen,
        'has_discount_product': _hasDiscountProduct,
        'extra_discount': _extraDiscount,
        'delivery_logistics': _deliveryLogistics,
        'price_delivery': _priceDelivery,
        'delivery_type': _deliveryType,
        'primary_category': _primaryCategory?.toMap(),
        'terciary_category': _terciaryCategory?.toMap(),
        'favorite_company': _favoriteCompany?.toMap(),
        'max_delivery_distance': _maxDeliveryDistance,
        'sum_discount': _sumDiscount,
        'description': _description,
        'operating_hour': _operatingHour?.map((e) => e.toMap()).toList(),
        'open_24': _open24,
        'rating': _rating,
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
        'cover_photo_url': serializeParam(
          _coverPhotoUrl,
          ParamType.String,
        ),
        'profile_photo_url': serializeParam(
          _profilePhotoUrl,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'is_favorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'default_discount': serializeParam(
          _defaultDiscount,
          ParamType.int,
        ),
        'is_open': serializeParam(
          _isOpen,
          ParamType.bool,
        ),
        'has_discount_product': serializeParam(
          _hasDiscountProduct,
          ParamType.bool,
        ),
        'extra_discount': serializeParam(
          _extraDiscount,
          ParamType.double,
        ),
        'delivery_logistics': serializeParam(
          _deliveryLogistics,
          ParamType.String,
        ),
        'price_delivery': serializeParam(
          _priceDelivery,
          ParamType.double,
        ),
        'delivery_type': serializeParam(
          _deliveryType,
          ParamType.String,
        ),
        'primary_category': serializeParam(
          _primaryCategory,
          ParamType.DataStruct,
        ),
        'terciary_category': serializeParam(
          _terciaryCategory,
          ParamType.DataStruct,
        ),
        'favorite_company': serializeParam(
          _favoriteCompany,
          ParamType.DataStruct,
        ),
        'max_delivery_distance': serializeParam(
          _maxDeliveryDistance,
          ParamType.double,
        ),
        'sum_discount': serializeParam(
          _sumDiscount,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'operating_hour': serializeParam(
          _operatingHour,
          ParamType.DataStruct,
          isList: true,
        ),
        'open_24': serializeParam(
          _open24,
          ParamType.bool,
        ),
        'rating': serializeParam(
          _rating,
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
        coverPhotoUrl: deserializeParam(
          data['cover_photo_url'],
          ParamType.String,
          false,
        ),
        profilePhotoUrl: deserializeParam(
          data['profile_photo_url'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        isFavorite: deserializeParam(
          data['is_favorite'],
          ParamType.bool,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        defaultDiscount: deserializeParam(
          data['default_discount'],
          ParamType.int,
          false,
        ),
        isOpen: deserializeParam(
          data['is_open'],
          ParamType.bool,
          false,
        ),
        hasDiscountProduct: deserializeParam(
          data['has_discount_product'],
          ParamType.bool,
          false,
        ),
        extraDiscount: deserializeParam(
          data['extra_discount'],
          ParamType.double,
          false,
        ),
        deliveryLogistics: deserializeParam(
          data['delivery_logistics'],
          ParamType.String,
          false,
        ),
        priceDelivery: deserializeParam(
          data['price_delivery'],
          ParamType.double,
          false,
        ),
        deliveryType: deserializeParam(
          data['delivery_type'],
          ParamType.String,
          false,
        ),
        primaryCategory: deserializeStructParam(
          data['primary_category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        terciaryCategory: deserializeStructParam(
          data['terciary_category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        favoriteCompany: deserializeStructParam(
          data['favorite_company'],
          ParamType.DataStruct,
          false,
          structBuilder: FavoriteCompanyStruct.fromSerializableMap,
        ),
        maxDeliveryDistance: deserializeParam(
          data['max_delivery_distance'],
          ParamType.double,
          false,
        ),
        sumDiscount: deserializeParam(
          data['sum_discount'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        operatingHour: deserializeStructParam<OperatingHourStruct>(
          data['operating_hour'],
          ParamType.DataStruct,
          true,
          structBuilder: OperatingHourStruct.fromSerializableMap,
        ),
        open24: deserializeParam(
          data['open_24'],
          ParamType.bool,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
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
        coverPhotoUrl == other.coverPhotoUrl &&
        profilePhotoUrl == other.profilePhotoUrl &&
        type == other.type &&
        address == other.address &&
        isFavorite == other.isFavorite &&
        distance == other.distance &&
        defaultDiscount == other.defaultDiscount &&
        isOpen == other.isOpen &&
        hasDiscountProduct == other.hasDiscountProduct &&
        extraDiscount == other.extraDiscount &&
        deliveryLogistics == other.deliveryLogistics &&
        priceDelivery == other.priceDelivery &&
        deliveryType == other.deliveryType &&
        primaryCategory == other.primaryCategory &&
        terciaryCategory == other.terciaryCategory &&
        favoriteCompany == other.favoriteCompany &&
        maxDeliveryDistance == other.maxDeliveryDistance &&
        sumDiscount == other.sumDiscount &&
        description == other.description &&
        listEquality.equals(operatingHour, other.operatingHour) &&
        open24 == other.open24 &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        coverPhotoUrl,
        profilePhotoUrl,
        type,
        address,
        isFavorite,
        distance,
        defaultDiscount,
        isOpen,
        hasDiscountProduct,
        extraDiscount,
        deliveryLogistics,
        priceDelivery,
        deliveryType,
        primaryCategory,
        terciaryCategory,
        favoriteCompany,
        maxDeliveryDistance,
        sumDiscount,
        description,
        operatingHour,
        open24,
        rating
      ]);
}

CompanyStruct createCompanyStruct({
  String? id,
  String? name,
  String? coverPhotoUrl,
  String? profilePhotoUrl,
  String? type,
  AddressStruct? address,
  bool? isFavorite,
  double? distance,
  int? defaultDiscount,
  bool? isOpen,
  bool? hasDiscountProduct,
  double? extraDiscount,
  String? deliveryLogistics,
  double? priceDelivery,
  String? deliveryType,
  CategoryStruct? primaryCategory,
  CategoryStruct? terciaryCategory,
  FavoriteCompanyStruct? favoriteCompany,
  double? maxDeliveryDistance,
  double? sumDiscount,
  String? description,
  bool? open24,
  double? rating,
}) =>
    CompanyStruct(
      id: id,
      name: name,
      coverPhotoUrl: coverPhotoUrl,
      profilePhotoUrl: profilePhotoUrl,
      type: type,
      address: address ?? AddressStruct(),
      isFavorite: isFavorite,
      distance: distance,
      defaultDiscount: defaultDiscount,
      isOpen: isOpen,
      hasDiscountProduct: hasDiscountProduct,
      extraDiscount: extraDiscount,
      deliveryLogistics: deliveryLogistics,
      priceDelivery: priceDelivery,
      deliveryType: deliveryType,
      primaryCategory: primaryCategory ?? CategoryStruct(),
      terciaryCategory: terciaryCategory ?? CategoryStruct(),
      favoriteCompany: favoriteCompany ?? FavoriteCompanyStruct(),
      maxDeliveryDistance: maxDeliveryDistance,
      sumDiscount: sumDiscount,
      description: description,
      open24: open24,
      rating: rating,
    );
