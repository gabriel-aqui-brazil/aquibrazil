// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsStruct extends BaseStruct {
  ResultsStruct({
    List<AddressComponentsStruct>? addressComponents,
    String? formattedAddress,
    GeometryStruct? geometry,
    String? placeId,
    PlusCodeStruct? plusCode,
    List<String>? types,
  })  : _addressComponents = addressComponents,
        _formattedAddress = formattedAddress,
        _geometry = geometry,
        _placeId = placeId,
        _plusCode = plusCode,
        _types = types;

  // "address_components" field.
  List<AddressComponentsStruct>? _addressComponents;
  List<AddressComponentsStruct> get addressComponents =>
      _addressComponents ?? const [];
  set addressComponents(List<AddressComponentsStruct>? val) =>
      _addressComponents = val;

  void updateAddressComponents(
      Function(List<AddressComponentsStruct>) updateFn) {
    updateFn(_addressComponents ??= []);
  }

  bool hasAddressComponents() => _addressComponents != null;

  // "formatted_address" field.
  String? _formattedAddress;
  String get formattedAddress => _formattedAddress ?? '';
  set formattedAddress(String? val) => _formattedAddress = val;

  bool hasFormattedAddress() => _formattedAddress != null;

  // "geometry" field.
  GeometryStruct? _geometry;
  GeometryStruct get geometry => _geometry ?? GeometryStruct();
  set geometry(GeometryStruct? val) => _geometry = val;

  void updateGeometry(Function(GeometryStruct) updateFn) {
    updateFn(_geometry ??= GeometryStruct());
  }

  bool hasGeometry() => _geometry != null;

  // "place_id" field.
  String? _placeId;
  String get placeId => _placeId ?? '';
  set placeId(String? val) => _placeId = val;

  bool hasPlaceId() => _placeId != null;

  // "plus_code" field.
  PlusCodeStruct? _plusCode;
  PlusCodeStruct get plusCode => _plusCode ?? PlusCodeStruct();
  set plusCode(PlusCodeStruct? val) => _plusCode = val;

  void updatePlusCode(Function(PlusCodeStruct) updateFn) {
    updateFn(_plusCode ??= PlusCodeStruct());
  }

  bool hasPlusCode() => _plusCode != null;

  // "types" field.
  List<String>? _types;
  List<String> get types => _types ?? const [];
  set types(List<String>? val) => _types = val;

  void updateTypes(Function(List<String>) updateFn) {
    updateFn(_types ??= []);
  }

  bool hasTypes() => _types != null;

  static ResultsStruct fromMap(Map<String, dynamic> data) => ResultsStruct(
        addressComponents: getStructList(
          data['address_components'],
          AddressComponentsStruct.fromMap,
        ),
        formattedAddress: data['formatted_address'] as String?,
        geometry: data['geometry'] is GeometryStruct
            ? data['geometry']
            : GeometryStruct.maybeFromMap(data['geometry']),
        placeId: data['place_id'] as String?,
        plusCode: data['plus_code'] is PlusCodeStruct
            ? data['plus_code']
            : PlusCodeStruct.maybeFromMap(data['plus_code']),
        types: getDataList(data['types']),
      );

  static ResultsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address_components':
            _addressComponents?.map((e) => e.toMap()).toList(),
        'formatted_address': _formattedAddress,
        'geometry': _geometry?.toMap(),
        'place_id': _placeId,
        'plus_code': _plusCode?.toMap(),
        'types': _types,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address_components': serializeParam(
          _addressComponents,
          ParamType.DataStruct,
          isList: true,
        ),
        'formatted_address': serializeParam(
          _formattedAddress,
          ParamType.String,
        ),
        'geometry': serializeParam(
          _geometry,
          ParamType.DataStruct,
        ),
        'place_id': serializeParam(
          _placeId,
          ParamType.String,
        ),
        'plus_code': serializeParam(
          _plusCode,
          ParamType.DataStruct,
        ),
        'types': serializeParam(
          _types,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsStruct(
        addressComponents: deserializeStructParam<AddressComponentsStruct>(
          data['address_components'],
          ParamType.DataStruct,
          true,
          structBuilder: AddressComponentsStruct.fromSerializableMap,
        ),
        formattedAddress: deserializeParam(
          data['formatted_address'],
          ParamType.String,
          false,
        ),
        geometry: deserializeStructParam(
          data['geometry'],
          ParamType.DataStruct,
          false,
          structBuilder: GeometryStruct.fromSerializableMap,
        ),
        placeId: deserializeParam(
          data['place_id'],
          ParamType.String,
          false,
        ),
        plusCode: deserializeStructParam(
          data['plus_code'],
          ParamType.DataStruct,
          false,
          structBuilder: PlusCodeStruct.fromSerializableMap,
        ),
        types: deserializeParam<String>(
          data['types'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'ResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultsStruct &&
        listEquality.equals(addressComponents, other.addressComponents) &&
        formattedAddress == other.formattedAddress &&
        geometry == other.geometry &&
        placeId == other.placeId &&
        plusCode == other.plusCode &&
        listEquality.equals(types, other.types);
  }

  @override
  int get hashCode => const ListEquality().hash([
        addressComponents,
        formattedAddress,
        geometry,
        placeId,
        plusCode,
        types
      ]);
}

ResultsStruct createResultsStruct({
  String? formattedAddress,
  GeometryStruct? geometry,
  String? placeId,
  PlusCodeStruct? plusCode,
}) =>
    ResultsStruct(
      formattedAddress: formattedAddress,
      geometry: geometry ?? GeometryStruct(),
      placeId: placeId,
      plusCode: plusCode ?? PlusCodeStruct(),
    );
