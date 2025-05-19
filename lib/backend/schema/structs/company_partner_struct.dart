// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyPartnerStruct extends BaseStruct {
  CompanyPartnerStruct({
    String? id,
    int? createdAt,
    String? name,
    String? instagram,
    double? latitude,
    double? longitude,
    String? description,
    String? discountText,
    String? discountType,
    String? address,
    bool? isActive,
    String? status,
    List<DiscountRuleStruct>? discountRule,
    String? profilePhotoUrl,
    String? coverPhotoUrl,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _instagram = instagram,
        _latitude = latitude,
        _longitude = longitude,
        _description = description,
        _discountText = discountText,
        _discountType = discountType,
        _address = address,
        _isActive = isActive,
        _status = status,
        _discountRule = discountRule,
        _profilePhotoUrl = profilePhotoUrl,
        _coverPhotoUrl = coverPhotoUrl;

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

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

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

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "discount_rule" field.
  List<DiscountRuleStruct>? _discountRule;
  List<DiscountRuleStruct> get discountRule => _discountRule ?? const [];
  set discountRule(List<DiscountRuleStruct>? val) => _discountRule = val;

  void updateDiscountRule(Function(List<DiscountRuleStruct>) updateFn) {
    updateFn(_discountRule ??= []);
  }

  bool hasDiscountRule() => _discountRule != null;

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

  static CompanyPartnerStruct fromMap(Map<String, dynamic> data) =>
      CompanyPartnerStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
        instagram: data['instagram'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        description: data['description'] as String?,
        discountText: data['discount_text'] as String?,
        discountType: data['discount_type'] as String?,
        address: data['address'] as String?,
        isActive: data['is_active'] as bool?,
        status: data['status'] as String?,
        discountRule: getStructList(
          data['discount_rule'],
          DiscountRuleStruct.fromMap,
        ),
        profilePhotoUrl: data['profile_photo_url'] as String?,
        coverPhotoUrl: data['cover_photo_url'] as String?,
      );

  static CompanyPartnerStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyPartnerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'instagram': _instagram,
        'latitude': _latitude,
        'longitude': _longitude,
        'description': _description,
        'discount_text': _discountText,
        'discount_type': _discountType,
        'address': _address,
        'is_active': _isActive,
        'status': _status,
        'discount_rule': _discountRule?.map((e) => e.toMap()).toList(),
        'profile_photo_url': _profilePhotoUrl,
        'cover_photo_url': _coverPhotoUrl,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'instagram': serializeParam(
          _instagram,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
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
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'discount_rule': serializeParam(
          _discountRule,
          ParamType.DataStruct,
          isList: true,
        ),
        'profile_photo_url': serializeParam(
          _profilePhotoUrl,
          ParamType.String,
        ),
        'cover_photo_url': serializeParam(
          _coverPhotoUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompanyPartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompanyPartnerStruct(
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
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
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
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        discountRule: deserializeStructParam<DiscountRuleStruct>(
          data['discount_rule'],
          ParamType.DataStruct,
          true,
          structBuilder: DiscountRuleStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'CompanyPartnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyPartnerStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        instagram == other.instagram &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        description == other.description &&
        discountText == other.discountText &&
        discountType == other.discountType &&
        address == other.address &&
        isActive == other.isActive &&
        status == other.status &&
        listEquality.equals(discountRule, other.discountRule) &&
        profilePhotoUrl == other.profilePhotoUrl &&
        coverPhotoUrl == other.coverPhotoUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        name,
        instagram,
        latitude,
        longitude,
        description,
        discountText,
        discountType,
        address,
        isActive,
        status,
        discountRule,
        profilePhotoUrl,
        coverPhotoUrl
      ]);
}

CompanyPartnerStruct createCompanyPartnerStruct({
  String? id,
  int? createdAt,
  String? name,
  String? instagram,
  double? latitude,
  double? longitude,
  String? description,
  String? discountText,
  String? discountType,
  String? address,
  bool? isActive,
  String? status,
  String? profilePhotoUrl,
  String? coverPhotoUrl,
}) =>
    CompanyPartnerStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      instagram: instagram,
      latitude: latitude,
      longitude: longitude,
      description: description,
      discountText: discountText,
      discountType: discountType,
      address: address,
      isActive: isActive,
      status: status,
      profilePhotoUrl: profilePhotoUrl,
      coverPhotoUrl: coverPhotoUrl,
    );
