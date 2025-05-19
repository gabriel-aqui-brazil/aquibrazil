// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BaseProductStruct extends BaseStruct {
  BaseProductStruct({
    String? id,
    int? createdAt,
    String? name,
    double? price,
    String? description,
    bool? isActive,
    int? individualDiscount,
    String? code,
    String? url,
    int? quantity,
    CompanyStruct? company,
    List<ImageStruct>? image,
    AutomotiveStatsStruct? automotive,
    RentalStruct? rental,
    PropertyStruct? property,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _price = price,
        _description = description,
        _isActive = isActive,
        _individualDiscount = individualDiscount,
        _code = code,
        _url = url,
        _quantity = quantity,
        _company = company,
        _image = image,
        _automotive = automotive,
        _rental = rental,
        _property = property;

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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "individual_discount" field.
  int? _individualDiscount;
  int get individualDiscount => _individualDiscount ?? 0;
  set individualDiscount(int? val) => _individualDiscount = val;

  void incrementIndividualDiscount(int amount) =>
      individualDiscount = individualDiscount + amount;

  bool hasIndividualDiscount() => _individualDiscount != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "image" field.
  List<ImageStruct>? _image;
  List<ImageStruct> get image => _image ?? const [];
  set image(List<ImageStruct>? val) => _image = val;

  void updateImage(Function(List<ImageStruct>) updateFn) {
    updateFn(_image ??= []);
  }

  bool hasImage() => _image != null;

  // "automotive" field.
  AutomotiveStatsStruct? _automotive;
  AutomotiveStatsStruct get automotive =>
      _automotive ?? AutomotiveStatsStruct();
  set automotive(AutomotiveStatsStruct? val) => _automotive = val;

  void updateAutomotive(Function(AutomotiveStatsStruct) updateFn) {
    updateFn(_automotive ??= AutomotiveStatsStruct());
  }

  bool hasAutomotive() => _automotive != null;

  // "rental" field.
  RentalStruct? _rental;
  RentalStruct get rental => _rental ?? RentalStruct();
  set rental(RentalStruct? val) => _rental = val;

  void updateRental(Function(RentalStruct) updateFn) {
    updateFn(_rental ??= RentalStruct());
  }

  bool hasRental() => _rental != null;

  // "property" field.
  PropertyStruct? _property;
  PropertyStruct get property => _property ?? PropertyStruct();
  set property(PropertyStruct? val) => _property = val;

  void updateProperty(Function(PropertyStruct) updateFn) {
    updateFn(_property ??= PropertyStruct());
  }

  bool hasProperty() => _property != null;

  static BaseProductStruct fromMap(Map<String, dynamic> data) =>
      BaseProductStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        description: data['description'] as String?,
        isActive: data['is_active'] as bool?,
        individualDiscount: castToType<int>(data['individual_discount']),
        code: data['code'] as String?,
        url: data['url'] as String?,
        quantity: castToType<int>(data['quantity']),
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        image: getStructList(
          data['image'],
          ImageStruct.fromMap,
        ),
        automotive: data['automotive'] is AutomotiveStatsStruct
            ? data['automotive']
            : AutomotiveStatsStruct.maybeFromMap(data['automotive']),
        rental: data['rental'] is RentalStruct
            ? data['rental']
            : RentalStruct.maybeFromMap(data['rental']),
        property: data['property'] is PropertyStruct
            ? data['property']
            : PropertyStruct.maybeFromMap(data['property']),
      );

  static BaseProductStruct? maybeFromMap(dynamic data) => data is Map
      ? BaseProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'price': _price,
        'description': _description,
        'is_active': _isActive,
        'individual_discount': _individualDiscount,
        'code': _code,
        'url': _url,
        'quantity': _quantity,
        'company': _company?.toMap(),
        'image': _image?.map((e) => e.toMap()).toList(),
        'automotive': _automotive?.toMap(),
        'rental': _rental?.toMap(),
        'property': _property?.toMap(),
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
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'individual_discount': serializeParam(
          _individualDiscount,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
          isList: true,
        ),
        'automotive': serializeParam(
          _automotive,
          ParamType.DataStruct,
        ),
        'rental': serializeParam(
          _rental,
          ParamType.DataStruct,
        ),
        'property': serializeParam(
          _property,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BaseProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      BaseProductStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        individualDiscount: deserializeParam(
          data['individual_discount'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        image: deserializeStructParam<ImageStruct>(
          data['image'],
          ParamType.DataStruct,
          true,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
        automotive: deserializeStructParam(
          data['automotive'],
          ParamType.DataStruct,
          false,
          structBuilder: AutomotiveStatsStruct.fromSerializableMap,
        ),
        rental: deserializeStructParam(
          data['rental'],
          ParamType.DataStruct,
          false,
          structBuilder: RentalStruct.fromSerializableMap,
        ),
        property: deserializeStructParam(
          data['property'],
          ParamType.DataStruct,
          false,
          structBuilder: PropertyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BaseProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BaseProductStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        price == other.price &&
        description == other.description &&
        isActive == other.isActive &&
        individualDiscount == other.individualDiscount &&
        code == other.code &&
        url == other.url &&
        quantity == other.quantity &&
        company == other.company &&
        listEquality.equals(image, other.image) &&
        automotive == other.automotive &&
        rental == other.rental &&
        property == other.property;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        name,
        price,
        description,
        isActive,
        individualDiscount,
        code,
        url,
        quantity,
        company,
        image,
        automotive,
        rental,
        property
      ]);
}

BaseProductStruct createBaseProductStruct({
  String? id,
  int? createdAt,
  String? name,
  double? price,
  String? description,
  bool? isActive,
  int? individualDiscount,
  String? code,
  String? url,
  int? quantity,
  CompanyStruct? company,
  AutomotiveStatsStruct? automotive,
  RentalStruct? rental,
  PropertyStruct? property,
}) =>
    BaseProductStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      price: price,
      description: description,
      isActive: isActive,
      individualDiscount: individualDiscount,
      code: code,
      url: url,
      quantity: quantity,
      company: company ?? CompanyStruct(),
      automotive: automotive ?? AutomotiveStatsStruct(),
      rental: rental ?? RentalStruct(),
      property: property ?? PropertyStruct(),
    );
