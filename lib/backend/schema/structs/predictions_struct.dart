// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionsStruct extends BaseStruct {
  PredictionsStruct({
    String? description,
    List<MatchedSubstringsStruct>? matchedSubstrings,
    String? placeId,
    String? referenceId,
    StructuredFormattingStruct? structuredFormatting,
    List<TermsStruct>? terms,
    List<String>? types,
  })  : _description = description,
        _matchedSubstrings = matchedSubstrings,
        _placeId = placeId,
        _referenceId = referenceId,
        _structuredFormatting = structuredFormatting,
        _terms = terms,
        _types = types;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "matched_substrings" field.
  List<MatchedSubstringsStruct>? _matchedSubstrings;
  List<MatchedSubstringsStruct> get matchedSubstrings =>
      _matchedSubstrings ?? const [];
  set matchedSubstrings(List<MatchedSubstringsStruct>? val) =>
      _matchedSubstrings = val;

  void updateMatchedSubstrings(
      Function(List<MatchedSubstringsStruct>) updateFn) {
    updateFn(_matchedSubstrings ??= []);
  }

  bool hasMatchedSubstrings() => _matchedSubstrings != null;

  // "place_id" field.
  String? _placeId;
  String get placeId => _placeId ?? '';
  set placeId(String? val) => _placeId = val;

  bool hasPlaceId() => _placeId != null;

  // "reference_id" field.
  String? _referenceId;
  String get referenceId => _referenceId ?? '';
  set referenceId(String? val) => _referenceId = val;

  bool hasReferenceId() => _referenceId != null;

  // "structured_formatting" field.
  StructuredFormattingStruct? _structuredFormatting;
  StructuredFormattingStruct get structuredFormatting =>
      _structuredFormatting ?? StructuredFormattingStruct();
  set structuredFormatting(StructuredFormattingStruct? val) =>
      _structuredFormatting = val;

  void updateStructuredFormatting(
      Function(StructuredFormattingStruct) updateFn) {
    updateFn(_structuredFormatting ??= StructuredFormattingStruct());
  }

  bool hasStructuredFormatting() => _structuredFormatting != null;

  // "terms" field.
  List<TermsStruct>? _terms;
  List<TermsStruct> get terms => _terms ?? const [];
  set terms(List<TermsStruct>? val) => _terms = val;

  void updateTerms(Function(List<TermsStruct>) updateFn) {
    updateFn(_terms ??= []);
  }

  bool hasTerms() => _terms != null;

  // "types" field.
  List<String>? _types;
  List<String> get types => _types ?? const [];
  set types(List<String>? val) => _types = val;

  void updateTypes(Function(List<String>) updateFn) {
    updateFn(_types ??= []);
  }

  bool hasTypes() => _types != null;

  static PredictionsStruct fromMap(Map<String, dynamic> data) =>
      PredictionsStruct(
        description: data['description'] as String?,
        matchedSubstrings: getStructList(
          data['matched_substrings'],
          MatchedSubstringsStruct.fromMap,
        ),
        placeId: data['place_id'] as String?,
        referenceId: data['reference_id'] as String?,
        structuredFormatting:
            data['structured_formatting'] is StructuredFormattingStruct
                ? data['structured_formatting']
                : StructuredFormattingStruct.maybeFromMap(
                    data['structured_formatting']),
        terms: getStructList(
          data['terms'],
          TermsStruct.fromMap,
        ),
        types: getDataList(data['types']),
      );

  static PredictionsStruct? maybeFromMap(dynamic data) => data is Map
      ? PredictionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'matched_substrings':
            _matchedSubstrings?.map((e) => e.toMap()).toList(),
        'place_id': _placeId,
        'reference_id': _referenceId,
        'structured_formatting': _structuredFormatting?.toMap(),
        'terms': _terms?.map((e) => e.toMap()).toList(),
        'types': _types,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'matched_substrings': serializeParam(
          _matchedSubstrings,
          ParamType.DataStruct,
          isList: true,
        ),
        'place_id': serializeParam(
          _placeId,
          ParamType.String,
        ),
        'reference_id': serializeParam(
          _referenceId,
          ParamType.String,
        ),
        'structured_formatting': serializeParam(
          _structuredFormatting,
          ParamType.DataStruct,
        ),
        'terms': serializeParam(
          _terms,
          ParamType.DataStruct,
          isList: true,
        ),
        'types': serializeParam(
          _types,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PredictionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PredictionsStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        matchedSubstrings: deserializeStructParam<MatchedSubstringsStruct>(
          data['matched_substrings'],
          ParamType.DataStruct,
          true,
          structBuilder: MatchedSubstringsStruct.fromSerializableMap,
        ),
        placeId: deserializeParam(
          data['place_id'],
          ParamType.String,
          false,
        ),
        referenceId: deserializeParam(
          data['reference_id'],
          ParamType.String,
          false,
        ),
        structuredFormatting: deserializeStructParam(
          data['structured_formatting'],
          ParamType.DataStruct,
          false,
          structBuilder: StructuredFormattingStruct.fromSerializableMap,
        ),
        terms: deserializeStructParam<TermsStruct>(
          data['terms'],
          ParamType.DataStruct,
          true,
          structBuilder: TermsStruct.fromSerializableMap,
        ),
        types: deserializeParam<String>(
          data['types'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PredictionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PredictionsStruct &&
        description == other.description &&
        listEquality.equals(matchedSubstrings, other.matchedSubstrings) &&
        placeId == other.placeId &&
        referenceId == other.referenceId &&
        structuredFormatting == other.structuredFormatting &&
        listEquality.equals(terms, other.terms) &&
        listEquality.equals(types, other.types);
  }

  @override
  int get hashCode => const ListEquality().hash([
        description,
        matchedSubstrings,
        placeId,
        referenceId,
        structuredFormatting,
        terms,
        types
      ]);
}

PredictionsStruct createPredictionsStruct({
  String? description,
  String? placeId,
  String? referenceId,
  StructuredFormattingStruct? structuredFormatting,
}) =>
    PredictionsStruct(
      description: description,
      placeId: placeId,
      referenceId: referenceId,
      structuredFormatting:
          structuredFormatting ?? StructuredFormattingStruct(),
    );
