// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdsStruct extends BaseStruct {
  AdsStruct({
    String? id,
    int? createdAt,
    String? companyId,
    String? mediaType,
    String? description,
    String? status,
    String? approvedBy,
    String? approvedAt,
    String? type,
    String? baseProductId,
    int? days,
    String? lastRun,
    String? cancelAt,
    String? cancelBy,
    int? expectedDate,
    String? media,
    String? videoUrl,
    bool? isCompanyFeatured,
    String? companyPrimaryCategoryId,
    String? companySecondaryCategoryId,
    String? companyTerciaryCategoryId,
    bool? isAds,
    double? distance,
    CompanyStruct? company,
    BaseProductStruct? baseProduct,
    CompanyPartnerStruct? companyPartner,
  })  : _id = id,
        _createdAt = createdAt,
        _companyId = companyId,
        _mediaType = mediaType,
        _description = description,
        _status = status,
        _approvedBy = approvedBy,
        _approvedAt = approvedAt,
        _type = type,
        _baseProductId = baseProductId,
        _days = days,
        _lastRun = lastRun,
        _cancelAt = cancelAt,
        _cancelBy = cancelBy,
        _expectedDate = expectedDate,
        _media = media,
        _videoUrl = videoUrl,
        _isCompanyFeatured = isCompanyFeatured,
        _companyPrimaryCategoryId = companyPrimaryCategoryId,
        _companySecondaryCategoryId = companySecondaryCategoryId,
        _companyTerciaryCategoryId = companyTerciaryCategoryId,
        _isAds = isAds,
        _distance = distance,
        _company = company,
        _baseProduct = baseProduct,
        _companyPartner = companyPartner;

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

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  set companyId(String? val) => _companyId = val;

  bool hasCompanyId() => _companyId != null;

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "approved_by" field.
  String? _approvedBy;
  String get approvedBy => _approvedBy ?? '';
  set approvedBy(String? val) => _approvedBy = val;

  bool hasApprovedBy() => _approvedBy != null;

  // "approved_at" field.
  String? _approvedAt;
  String get approvedAt => _approvedAt ?? '';
  set approvedAt(String? val) => _approvedAt = val;

  bool hasApprovedAt() => _approvedAt != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "base_product_id" field.
  String? _baseProductId;
  String get baseProductId => _baseProductId ?? '';
  set baseProductId(String? val) => _baseProductId = val;

  bool hasBaseProductId() => _baseProductId != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "last_run" field.
  String? _lastRun;
  String get lastRun => _lastRun ?? '';
  set lastRun(String? val) => _lastRun = val;

  bool hasLastRun() => _lastRun != null;

  // "cancel_at" field.
  String? _cancelAt;
  String get cancelAt => _cancelAt ?? '';
  set cancelAt(String? val) => _cancelAt = val;

  bool hasCancelAt() => _cancelAt != null;

  // "cancel_by" field.
  String? _cancelBy;
  String get cancelBy => _cancelBy ?? '';
  set cancelBy(String? val) => _cancelBy = val;

  bool hasCancelBy() => _cancelBy != null;

  // "expected_date" field.
  int? _expectedDate;
  int get expectedDate => _expectedDate ?? 0;
  set expectedDate(int? val) => _expectedDate = val;

  void incrementExpectedDate(int amount) =>
      expectedDate = expectedDate + amount;

  bool hasExpectedDate() => _expectedDate != null;

  // "media" field.
  String? _media;
  String get media => _media ?? '';
  set media(String? val) => _media = val;

  bool hasMedia() => _media != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  set videoUrl(String? val) => _videoUrl = val;

  bool hasVideoUrl() => _videoUrl != null;

  // "is_company_featured" field.
  bool? _isCompanyFeatured;
  bool get isCompanyFeatured => _isCompanyFeatured ?? false;
  set isCompanyFeatured(bool? val) => _isCompanyFeatured = val;

  bool hasIsCompanyFeatured() => _isCompanyFeatured != null;

  // "company_primary_category_id" field.
  String? _companyPrimaryCategoryId;
  String get companyPrimaryCategoryId => _companyPrimaryCategoryId ?? '';
  set companyPrimaryCategoryId(String? val) => _companyPrimaryCategoryId = val;

  bool hasCompanyPrimaryCategoryId() => _companyPrimaryCategoryId != null;

  // "company_secondary_category_id" field.
  String? _companySecondaryCategoryId;
  String get companySecondaryCategoryId => _companySecondaryCategoryId ?? '';
  set companySecondaryCategoryId(String? val) =>
      _companySecondaryCategoryId = val;

  bool hasCompanySecondaryCategoryId() => _companySecondaryCategoryId != null;

  // "company_terciary_category_id" field.
  String? _companyTerciaryCategoryId;
  String get companyTerciaryCategoryId => _companyTerciaryCategoryId ?? '';
  set companyTerciaryCategoryId(String? val) =>
      _companyTerciaryCategoryId = val;

  bool hasCompanyTerciaryCategoryId() => _companyTerciaryCategoryId != null;

  // "is_ads" field.
  bool? _isAds;
  bool get isAds => _isAds ?? false;
  set isAds(bool? val) => _isAds = val;

  bool hasIsAds() => _isAds != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "base_product" field.
  BaseProductStruct? _baseProduct;
  BaseProductStruct get baseProduct => _baseProduct ?? BaseProductStruct();
  set baseProduct(BaseProductStruct? val) => _baseProduct = val;

  void updateBaseProduct(Function(BaseProductStruct) updateFn) {
    updateFn(_baseProduct ??= BaseProductStruct());
  }

  bool hasBaseProduct() => _baseProduct != null;

  // "company_partner" field.
  CompanyPartnerStruct? _companyPartner;
  CompanyPartnerStruct get companyPartner =>
      _companyPartner ?? CompanyPartnerStruct();
  set companyPartner(CompanyPartnerStruct? val) => _companyPartner = val;

  void updateCompanyPartner(Function(CompanyPartnerStruct) updateFn) {
    updateFn(_companyPartner ??= CompanyPartnerStruct());
  }

  bool hasCompanyPartner() => _companyPartner != null;

  static AdsStruct fromMap(Map<String, dynamic> data) => AdsStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        companyId: data['company_id'] as String?,
        mediaType: data['media_type'] as String?,
        description: data['description'] as String?,
        status: data['status'] as String?,
        approvedBy: data['approved_by'] as String?,
        approvedAt: data['approved_at'] as String?,
        type: data['type'] as String?,
        baseProductId: data['base_product_id'] as String?,
        days: castToType<int>(data['days']),
        lastRun: data['last_run'] as String?,
        cancelAt: data['cancel_at'] as String?,
        cancelBy: data['cancel_by'] as String?,
        expectedDate: castToType<int>(data['expected_date']),
        media: data['media'] as String?,
        videoUrl: data['video_url'] as String?,
        isCompanyFeatured: data['is_company_featured'] as bool?,
        companyPrimaryCategoryId:
            data['company_primary_category_id'] as String?,
        companySecondaryCategoryId:
            data['company_secondary_category_id'] as String?,
        companyTerciaryCategoryId:
            data['company_terciary_category_id'] as String?,
        isAds: data['is_ads'] as bool?,
        distance: castToType<double>(data['distance']),
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        baseProduct: data['base_product'] is BaseProductStruct
            ? data['base_product']
            : BaseProductStruct.maybeFromMap(data['base_product']),
        companyPartner: data['company_partner'] is CompanyPartnerStruct
            ? data['company_partner']
            : CompanyPartnerStruct.maybeFromMap(data['company_partner']),
      );

  static AdsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AdsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'company_id': _companyId,
        'media_type': _mediaType,
        'description': _description,
        'status': _status,
        'approved_by': _approvedBy,
        'approved_at': _approvedAt,
        'type': _type,
        'base_product_id': _baseProductId,
        'days': _days,
        'last_run': _lastRun,
        'cancel_at': _cancelAt,
        'cancel_by': _cancelBy,
        'expected_date': _expectedDate,
        'media': _media,
        'video_url': _videoUrl,
        'is_company_featured': _isCompanyFeatured,
        'company_primary_category_id': _companyPrimaryCategoryId,
        'company_secondary_category_id': _companySecondaryCategoryId,
        'company_terciary_category_id': _companyTerciaryCategoryId,
        'is_ads': _isAds,
        'distance': _distance,
        'company': _company?.toMap(),
        'base_product': _baseProduct?.toMap(),
        'company_partner': _companyPartner?.toMap(),
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
        'company_id': serializeParam(
          _companyId,
          ParamType.String,
        ),
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'approved_by': serializeParam(
          _approvedBy,
          ParamType.String,
        ),
        'approved_at': serializeParam(
          _approvedAt,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'base_product_id': serializeParam(
          _baseProductId,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'last_run': serializeParam(
          _lastRun,
          ParamType.String,
        ),
        'cancel_at': serializeParam(
          _cancelAt,
          ParamType.String,
        ),
        'cancel_by': serializeParam(
          _cancelBy,
          ParamType.String,
        ),
        'expected_date': serializeParam(
          _expectedDate,
          ParamType.int,
        ),
        'media': serializeParam(
          _media,
          ParamType.String,
        ),
        'video_url': serializeParam(
          _videoUrl,
          ParamType.String,
        ),
        'is_company_featured': serializeParam(
          _isCompanyFeatured,
          ParamType.bool,
        ),
        'company_primary_category_id': serializeParam(
          _companyPrimaryCategoryId,
          ParamType.String,
        ),
        'company_secondary_category_id': serializeParam(
          _companySecondaryCategoryId,
          ParamType.String,
        ),
        'company_terciary_category_id': serializeParam(
          _companyTerciaryCategoryId,
          ParamType.String,
        ),
        'is_ads': serializeParam(
          _isAds,
          ParamType.bool,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'base_product': serializeParam(
          _baseProduct,
          ParamType.DataStruct,
        ),
        'company_partner': serializeParam(
          _companyPartner,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AdsStruct fromSerializableMap(Map<String, dynamic> data) => AdsStruct(
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
        companyId: deserializeParam(
          data['company_id'],
          ParamType.String,
          false,
        ),
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        approvedBy: deserializeParam(
          data['approved_by'],
          ParamType.String,
          false,
        ),
        approvedAt: deserializeParam(
          data['approved_at'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        baseProductId: deserializeParam(
          data['base_product_id'],
          ParamType.String,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        lastRun: deserializeParam(
          data['last_run'],
          ParamType.String,
          false,
        ),
        cancelAt: deserializeParam(
          data['cancel_at'],
          ParamType.String,
          false,
        ),
        cancelBy: deserializeParam(
          data['cancel_by'],
          ParamType.String,
          false,
        ),
        expectedDate: deserializeParam(
          data['expected_date'],
          ParamType.int,
          false,
        ),
        media: deserializeParam(
          data['media'],
          ParamType.String,
          false,
        ),
        videoUrl: deserializeParam(
          data['video_url'],
          ParamType.String,
          false,
        ),
        isCompanyFeatured: deserializeParam(
          data['is_company_featured'],
          ParamType.bool,
          false,
        ),
        companyPrimaryCategoryId: deserializeParam(
          data['company_primary_category_id'],
          ParamType.String,
          false,
        ),
        companySecondaryCategoryId: deserializeParam(
          data['company_secondary_category_id'],
          ParamType.String,
          false,
        ),
        companyTerciaryCategoryId: deserializeParam(
          data['company_terciary_category_id'],
          ParamType.String,
          false,
        ),
        isAds: deserializeParam(
          data['is_ads'],
          ParamType.bool,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        baseProduct: deserializeStructParam(
          data['base_product'],
          ParamType.DataStruct,
          false,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
        companyPartner: deserializeStructParam(
          data['company_partner'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyPartnerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AdsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AdsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        companyId == other.companyId &&
        mediaType == other.mediaType &&
        description == other.description &&
        status == other.status &&
        approvedBy == other.approvedBy &&
        approvedAt == other.approvedAt &&
        type == other.type &&
        baseProductId == other.baseProductId &&
        days == other.days &&
        lastRun == other.lastRun &&
        cancelAt == other.cancelAt &&
        cancelBy == other.cancelBy &&
        expectedDate == other.expectedDate &&
        media == other.media &&
        videoUrl == other.videoUrl &&
        isCompanyFeatured == other.isCompanyFeatured &&
        companyPrimaryCategoryId == other.companyPrimaryCategoryId &&
        companySecondaryCategoryId == other.companySecondaryCategoryId &&
        companyTerciaryCategoryId == other.companyTerciaryCategoryId &&
        isAds == other.isAds &&
        distance == other.distance &&
        company == other.company &&
        baseProduct == other.baseProduct &&
        companyPartner == other.companyPartner;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        companyId,
        mediaType,
        description,
        status,
        approvedBy,
        approvedAt,
        type,
        baseProductId,
        days,
        lastRun,
        cancelAt,
        cancelBy,
        expectedDate,
        media,
        videoUrl,
        isCompanyFeatured,
        companyPrimaryCategoryId,
        companySecondaryCategoryId,
        companyTerciaryCategoryId,
        isAds,
        distance,
        company,
        baseProduct,
        companyPartner
      ]);
}

AdsStruct createAdsStruct({
  String? id,
  int? createdAt,
  String? companyId,
  String? mediaType,
  String? description,
  String? status,
  String? approvedBy,
  String? approvedAt,
  String? type,
  String? baseProductId,
  int? days,
  String? lastRun,
  String? cancelAt,
  String? cancelBy,
  int? expectedDate,
  String? media,
  String? videoUrl,
  bool? isCompanyFeatured,
  String? companyPrimaryCategoryId,
  String? companySecondaryCategoryId,
  String? companyTerciaryCategoryId,
  bool? isAds,
  double? distance,
  CompanyStruct? company,
  BaseProductStruct? baseProduct,
  CompanyPartnerStruct? companyPartner,
}) =>
    AdsStruct(
      id: id,
      createdAt: createdAt,
      companyId: companyId,
      mediaType: mediaType,
      description: description,
      status: status,
      approvedBy: approvedBy,
      approvedAt: approvedAt,
      type: type,
      baseProductId: baseProductId,
      days: days,
      lastRun: lastRun,
      cancelAt: cancelAt,
      cancelBy: cancelBy,
      expectedDate: expectedDate,
      media: media,
      videoUrl: videoUrl,
      isCompanyFeatured: isCompanyFeatured,
      companyPrimaryCategoryId: companyPrimaryCategoryId,
      companySecondaryCategoryId: companySecondaryCategoryId,
      companyTerciaryCategoryId: companyTerciaryCategoryId,
      isAds: isAds,
      distance: distance,
      company: company ?? CompanyStruct(),
      baseProduct: baseProduct ?? BaseProductStruct(),
      companyPartner: companyPartner ?? CompanyPartnerStruct(),
    );
