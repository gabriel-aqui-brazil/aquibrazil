// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyPartnerStruct extends BaseStruct {
  CompanyPartnerStruct({
    String? id,
    String? name,
    String? instagram,
    String? profilePhotoUrl,
    String? coverPhotoUrl,
    String? description,
    String? discountText,
    String? discountType,
    String? address,
    List<DiscountRuleStruct>? discountRule,
    String? latitude,
    String? longitude,
    double? distance,
    String? termsAndConditionsUrl,
    CategoryPartnerStruct? partnerCategory,
  })  : _id = id,
        _name = name,
        _instagram = instagram,
        _profilePhotoUrl = profilePhotoUrl,
        _coverPhotoUrl = coverPhotoUrl,
        _description = description,
        _discountText = discountText,
        _discountType = discountType,
        _address = address,
        _discountRule = discountRule,
        _latitude = latitude,
        _longitude = longitude,
        _distance = distance,
        _termsAndConditionsUrl = termsAndConditionsUrl,
        _partnerCategory = partnerCategory;

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

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  set instagram(String? val) => _instagram = val;

  bool hasInstagram() => _instagram != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "discount_text" field.
  String? _discountText;
  String get discountText => _discountText ?? '';
  set discountText(String? val) => _discountText = val;

  bool hasDiscountText() => _discountText != null;

  // "discount_type" field.
  String? _discountType;
  String get discountType => _discountType ?? '';
  set discountType(String? val) => _discountType = val;

  bool hasDiscountType() => _discountType != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "discount_rule" field.
  List<DiscountRuleStruct>? _discountRule;
  List<DiscountRuleStruct> get discountRule => _discountRule ?? const [];
  set discountRule(List<DiscountRuleStruct>? val) => _discountRule = val;

  void updateDiscountRule(Function(List<DiscountRuleStruct>) updateFn) {
    updateFn(_discountRule ??= []);
  }

  bool hasDiscountRule() => _discountRule != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "terms_and_conditions_url" field.
  String? _termsAndConditionsUrl;
  String get termsAndConditionsUrl => _termsAndConditionsUrl ?? '';
  set termsAndConditionsUrl(String? val) => _termsAndConditionsUrl = val;

  bool hasTermsAndConditionsUrl() => _termsAndConditionsUrl != null;

  // "partner_category" field.
  CategoryPartnerStruct? _partnerCategory;
  CategoryPartnerStruct get partnerCategory =>
      _partnerCategory ?? CategoryPartnerStruct();
  set partnerCategory(CategoryPartnerStruct? val) => _partnerCategory = val;

  void updatePartnerCategory(Function(CategoryPartnerStruct) updateFn) {
    updateFn(_partnerCategory ??= CategoryPartnerStruct());
  }

  bool hasPartnerCategory() => _partnerCategory != null;

  static CompanyPartnerStruct fromMap(Map<String, dynamic> data) =>
      CompanyPartnerStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        instagram: data['instagram'] as String?,
        profilePhotoUrl: data['profile_photo_url'] as String?,
        coverPhotoUrl: data['cover_photo_url'] as String?,
        description: data['description'] as String?,
        discountText: data['discount_text'] as String?,
        discountType: data['discount_type'] as String?,
        address: data['address'] as String?,
        discountRule: getStructList(
          data['discount_rule'],
          DiscountRuleStruct.fromMap,
        ),
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        distance: castToType<double>(data['distance']),
        termsAndConditionsUrl: data['terms_and_conditions_url'] as String?,
        partnerCategory: data['partner_category'] is CategoryPartnerStruct
            ? data['partner_category']
            : CategoryPartnerStruct.maybeFromMap(data['partner_category']),
      );

  static CompanyPartnerStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyPartnerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'instagram': _instagram,
        'profile_photo_url': _profilePhotoUrl,
        'cover_photo_url': _coverPhotoUrl,
        'description': _description,
        'discount_text': _discountText,
        'discount_type': _discountType,
        'address': _address,
        'discount_rule': _discountRule?.map((e) => e.toMap()).toList(),
        'latitude': _latitude,
        'longitude': _longitude,
        'distance': _distance,
        'terms_and_conditions_url': _termsAndConditionsUrl,
        'partner_category': _partnerCategory?.toMap(),
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
        'instagram': serializeParam(
          _instagram,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'discount_text': serializeParam(
          _discountText,
          ParamType.String,
        ),
        'discount_type': serializeParam(
          _discountType,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'discount_rule': serializeParam(
          _discountRule,
          ParamType.DataStruct,
          isList: true,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'terms_and_conditions_url': serializeParam(
          _termsAndConditionsUrl,
          ParamType.String,
        ),
        'partner_category': serializeParam(
          _partnerCategory,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CompanyPartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyPartnerStruct(
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
        instagram: deserializeParam(
          data['instagram'],
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        discountText: deserializeParam(
          data['discount_text'],
          ParamType.String,
          false,
        ),
        discountType: deserializeParam(
          data['discount_type'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        discountRule: deserializeStructParam<DiscountRuleStruct>(
          data['discount_rule'],
          ParamType.DataStruct,
          true,
          structBuilder: DiscountRuleStruct.fromSerializableMap,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        termsAndConditionsUrl: deserializeParam(
          data['terms_and_conditions_url'],
          ParamType.String,
          false,
        ),
        partnerCategory: deserializeStructParam(
          data['partner_category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryPartnerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompanyPartnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyPartnerStruct &&
        id == other.id &&
        name == other.name &&
        instagram == other.instagram &&
        profilePhotoUrl == other.profilePhotoUrl &&
        coverPhotoUrl == other.coverPhotoUrl &&
        description == other.description &&
        discountText == other.discountText &&
        discountType == other.discountType &&
        address == other.address &&
        listEquality.equals(discountRule, other.discountRule) &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        distance == other.distance &&
        termsAndConditionsUrl == other.termsAndConditionsUrl &&
        partnerCategory == other.partnerCategory;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        instagram,
        profilePhotoUrl,
        coverPhotoUrl,
        description,
        discountText,
        discountType,
        address,
        discountRule,
        latitude,
        longitude,
        distance,
        termsAndConditionsUrl,
        partnerCategory
      ]);
}

CompanyPartnerStruct createCompanyPartnerStruct({
  String? id,
  String? name,
  String? instagram,
  String? profilePhotoUrl,
  String? coverPhotoUrl,
  String? description,
  String? discountText,
  String? discountType,
  String? address,
  String? latitude,
  String? longitude,
  double? distance,
  String? termsAndConditionsUrl,
  CategoryPartnerStruct? partnerCategory,
}) =>
    CompanyPartnerStruct(
      id: id,
      name: name,
      instagram: instagram,
      profilePhotoUrl: profilePhotoUrl,
      coverPhotoUrl: coverPhotoUrl,
      description: description,
      discountText: discountText,
      discountType: discountType,
      address: address,
      latitude: latitude,
      longitude: longitude,
      distance: distance,
      termsAndConditionsUrl: termsAndConditionsUrl,
      partnerCategory: partnerCategory ?? CategoryPartnerStruct(),
    );
