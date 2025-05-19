// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BaseProductStruct extends BaseStruct {
  BaseProductStruct({
    String? id,
    double? individualDiscount,
    String? name,
    String? description,
    String? type,
    double? price,
    double? originalPrice,
    double? aquipassSavedPercentage,
    double? aquipassSavedPrice,
    List<ProductImageStruct>? image,
    List<AddonGroupStruct>? addonGroup,
    ServiceStruct? service,
    List<SessionStruct>? sessions,
    bool? isLactoseFree,
    bool? isGluttenFree,
    bool? isVegan,
  })  : _id = id,
        _individualDiscount = individualDiscount,
        _name = name,
        _description = description,
        _type = type,
        _price = price,
        _originalPrice = originalPrice,
        _aquipassSavedPercentage = aquipassSavedPercentage,
        _aquipassSavedPrice = aquipassSavedPrice,
        _image = image,
        _addonGroup = addonGroup,
        _service = service,
        _sessions = sessions,
        _isLactoseFree = isLactoseFree,
        _isGluttenFree = isGluttenFree,
        _isVegan = isVegan;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "individual_discount" field.
  double? _individualDiscount;
  double get individualDiscount => _individualDiscount ?? 0.0;
  set individualDiscount(double? val) => _individualDiscount = val;

  void incrementIndividualDiscount(double amount) =>
      individualDiscount = individualDiscount + amount;

  bool hasIndividualDiscount() => _individualDiscount != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "original_price" field.
  double? _originalPrice;
  double get originalPrice => _originalPrice ?? 0.0;
  set originalPrice(double? val) => _originalPrice = val;

  void incrementOriginalPrice(double amount) =>
      originalPrice = originalPrice + amount;

  bool hasOriginalPrice() => _originalPrice != null;

  // "aquipass_saved_percentage" field.
  double? _aquipassSavedPercentage;
  double get aquipassSavedPercentage => _aquipassSavedPercentage ?? 0.0;
  set aquipassSavedPercentage(double? val) => _aquipassSavedPercentage = val;

  void incrementAquipassSavedPercentage(double amount) =>
      aquipassSavedPercentage = aquipassSavedPercentage + amount;

  bool hasAquipassSavedPercentage() => _aquipassSavedPercentage != null;

  // "aquipass_saved_price" field.
  double? _aquipassSavedPrice;
  double get aquipassSavedPrice => _aquipassSavedPrice ?? 0.0;
  set aquipassSavedPrice(double? val) => _aquipassSavedPrice = val;

  void incrementAquipassSavedPrice(double amount) =>
      aquipassSavedPrice = aquipassSavedPrice + amount;

  bool hasAquipassSavedPrice() => _aquipassSavedPrice != null;

  // "image" field.
  List<ProductImageStruct>? _image;
  List<ProductImageStruct> get image => _image ?? const [];
  set image(List<ProductImageStruct>? val) => _image = val;

  void updateImage(Function(List<ProductImageStruct>) updateFn) {
    updateFn(_image ??= []);
  }

  bool hasImage() => _image != null;

  // "addon_group" field.
  List<AddonGroupStruct>? _addonGroup;
  List<AddonGroupStruct> get addonGroup => _addonGroup ?? const [];
  set addonGroup(List<AddonGroupStruct>? val) => _addonGroup = val;

  void updateAddonGroup(Function(List<AddonGroupStruct>) updateFn) {
    updateFn(_addonGroup ??= []);
  }

  bool hasAddonGroup() => _addonGroup != null;

  // "service" field.
  ServiceStruct? _service;
  ServiceStruct get service => _service ?? ServiceStruct();
  set service(ServiceStruct? val) => _service = val;

  void updateService(Function(ServiceStruct) updateFn) {
    updateFn(_service ??= ServiceStruct());
  }

  bool hasService() => _service != null;

  // "sessions" field.
  List<SessionStruct>? _sessions;
  List<SessionStruct> get sessions => _sessions ?? const [];
  set sessions(List<SessionStruct>? val) => _sessions = val;

  void updateSessions(Function(List<SessionStruct>) updateFn) {
    updateFn(_sessions ??= []);
  }

  bool hasSessions() => _sessions != null;

  // "is_lactose_free" field.
  bool? _isLactoseFree;
  bool get isLactoseFree => _isLactoseFree ?? false;
  set isLactoseFree(bool? val) => _isLactoseFree = val;

  bool hasIsLactoseFree() => _isLactoseFree != null;

  // "is_glutten_free" field.
  bool? _isGluttenFree;
  bool get isGluttenFree => _isGluttenFree ?? false;
  set isGluttenFree(bool? val) => _isGluttenFree = val;

  bool hasIsGluttenFree() => _isGluttenFree != null;

  // "is_vegan" field.
  bool? _isVegan;
  bool get isVegan => _isVegan ?? false;
  set isVegan(bool? val) => _isVegan = val;

  bool hasIsVegan() => _isVegan != null;

  static BaseProductStruct fromMap(Map<String, dynamic> data) =>
      BaseProductStruct(
        id: data['id'] as String?,
        individualDiscount: castToType<double>(data['individual_discount']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        type: data['type'] as String?,
        price: castToType<double>(data['price']),
        originalPrice: castToType<double>(data['original_price']),
        aquipassSavedPercentage:
            castToType<double>(data['aquipass_saved_percentage']),
        aquipassSavedPrice: castToType<double>(data['aquipass_saved_price']),
        image: getStructList(
          data['image'],
          ProductImageStruct.fromMap,
        ),
        addonGroup: getStructList(
          data['addon_group'],
          AddonGroupStruct.fromMap,
        ),
        service: data['service'] is ServiceStruct
            ? data['service']
            : ServiceStruct.maybeFromMap(data['service']),
        sessions: getStructList(
          data['sessions'],
          SessionStruct.fromMap,
        ),
        isLactoseFree: data['is_lactose_free'] as bool?,
        isGluttenFree: data['is_glutten_free'] as bool?,
        isVegan: data['is_vegan'] as bool?,
      );

  static BaseProductStruct? maybeFromMap(dynamic data) => data is Map
      ? BaseProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'individual_discount': _individualDiscount,
        'name': _name,
        'description': _description,
        'type': _type,
        'price': _price,
        'original_price': _originalPrice,
        'aquipass_saved_percentage': _aquipassSavedPercentage,
        'aquipass_saved_price': _aquipassSavedPrice,
        'image': _image?.map((e) => e.toMap()).toList(),
        'addon_group': _addonGroup?.map((e) => e.toMap()).toList(),
        'service': _service?.toMap(),
        'sessions': _sessions?.map((e) => e.toMap()).toList(),
        'is_lactose_free': _isLactoseFree,
        'is_glutten_free': _isGluttenFree,
        'is_vegan': _isVegan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'individual_discount': serializeParam(
          _individualDiscount,
          ParamType.double,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'original_price': serializeParam(
          _originalPrice,
          ParamType.double,
        ),
        'aquipass_saved_percentage': serializeParam(
          _aquipassSavedPercentage,
          ParamType.double,
        ),
        'aquipass_saved_price': serializeParam(
          _aquipassSavedPrice,
          ParamType.double,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
          isList: true,
        ),
        'addon_group': serializeParam(
          _addonGroup,
          ParamType.DataStruct,
          isList: true,
        ),
        'service': serializeParam(
          _service,
          ParamType.DataStruct,
        ),
        'sessions': serializeParam(
          _sessions,
          ParamType.DataStruct,
          isList: true,
        ),
        'is_lactose_free': serializeParam(
          _isLactoseFree,
          ParamType.bool,
        ),
        'is_glutten_free': serializeParam(
          _isGluttenFree,
          ParamType.bool,
        ),
        'is_vegan': serializeParam(
          _isVegan,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BaseProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      BaseProductStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        individualDiscount: deserializeParam(
          data['individual_discount'],
          ParamType.double,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        originalPrice: deserializeParam(
          data['original_price'],
          ParamType.double,
          false,
        ),
        aquipassSavedPercentage: deserializeParam(
          data['aquipass_saved_percentage'],
          ParamType.double,
          false,
        ),
        aquipassSavedPrice: deserializeParam(
          data['aquipass_saved_price'],
          ParamType.double,
          false,
        ),
        image: deserializeStructParam<ProductImageStruct>(
          data['image'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductImageStruct.fromSerializableMap,
        ),
        addonGroup: deserializeStructParam<AddonGroupStruct>(
          data['addon_group'],
          ParamType.DataStruct,
          true,
          structBuilder: AddonGroupStruct.fromSerializableMap,
        ),
        service: deserializeStructParam(
          data['service'],
          ParamType.DataStruct,
          false,
          structBuilder: ServiceStruct.fromSerializableMap,
        ),
        sessions: deserializeStructParam<SessionStruct>(
          data['sessions'],
          ParamType.DataStruct,
          true,
          structBuilder: SessionStruct.fromSerializableMap,
        ),
        isLactoseFree: deserializeParam(
          data['is_lactose_free'],
          ParamType.bool,
          false,
        ),
        isGluttenFree: deserializeParam(
          data['is_glutten_free'],
          ParamType.bool,
          false,
        ),
        isVegan: deserializeParam(
          data['is_vegan'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BaseProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BaseProductStruct &&
        id == other.id &&
        individualDiscount == other.individualDiscount &&
        name == other.name &&
        description == other.description &&
        type == other.type &&
        price == other.price &&
        originalPrice == other.originalPrice &&
        aquipassSavedPercentage == other.aquipassSavedPercentage &&
        aquipassSavedPrice == other.aquipassSavedPrice &&
        listEquality.equals(image, other.image) &&
        listEquality.equals(addonGroup, other.addonGroup) &&
        service == other.service &&
        listEquality.equals(sessions, other.sessions) &&
        isLactoseFree == other.isLactoseFree &&
        isGluttenFree == other.isGluttenFree &&
        isVegan == other.isVegan;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        individualDiscount,
        name,
        description,
        type,
        price,
        originalPrice,
        aquipassSavedPercentage,
        aquipassSavedPrice,
        image,
        addonGroup,
        service,
        sessions,
        isLactoseFree,
        isGluttenFree,
        isVegan
      ]);
}

BaseProductStruct createBaseProductStruct({
  String? id,
  double? individualDiscount,
  String? name,
  String? description,
  String? type,
  double? price,
  double? originalPrice,
  double? aquipassSavedPercentage,
  double? aquipassSavedPrice,
  ServiceStruct? service,
  bool? isLactoseFree,
  bool? isGluttenFree,
  bool? isVegan,
}) =>
    BaseProductStruct(
      id: id,
      individualDiscount: individualDiscount,
      name: name,
      description: description,
      type: type,
      price: price,
      originalPrice: originalPrice,
      aquipassSavedPercentage: aquipassSavedPercentage,
      aquipassSavedPrice: aquipassSavedPrice,
      service: service ?? ServiceStruct(),
      isLactoseFree: isLactoseFree,
      isGluttenFree: isGluttenFree,
      isVegan: isVegan,
    );
