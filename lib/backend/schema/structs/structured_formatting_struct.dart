// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StructuredFormattingStruct extends BaseStruct {
  StructuredFormattingStruct({
    String? mainText,
    List<MainTextMatchedSubstringsStruct>? mainTextMatchedSubstrings,
    String? secondaryText,
  })  : _mainText = mainText,
        _mainTextMatchedSubstrings = mainTextMatchedSubstrings,
        _secondaryText = secondaryText;

  // "main_text" field.
  String? _mainText;
  String get mainText => _mainText ?? '';
  set mainText(String? val) => _mainText = val;

  bool hasMainText() => _mainText != null;

  // "main_text_matched_substrings" field.
  List<MainTextMatchedSubstringsStruct>? _mainTextMatchedSubstrings;
  List<MainTextMatchedSubstringsStruct> get mainTextMatchedSubstrings =>
      _mainTextMatchedSubstrings ?? const [];
  set mainTextMatchedSubstrings(List<MainTextMatchedSubstringsStruct>? val) =>
      _mainTextMatchedSubstrings = val;

  void updateMainTextMatchedSubstrings(
      Function(List<MainTextMatchedSubstringsStruct>) updateFn) {
    updateFn(_mainTextMatchedSubstrings ??= []);
  }

  bool hasMainTextMatchedSubstrings() => _mainTextMatchedSubstrings != null;

  // "secondary_text" field.
  String? _secondaryText;
  String get secondaryText => _secondaryText ?? '';
  set secondaryText(String? val) => _secondaryText = val;

  bool hasSecondaryText() => _secondaryText != null;

  static StructuredFormattingStruct fromMap(Map<String, dynamic> data) =>
      StructuredFormattingStruct(
        mainText: data['main_text'] as String?,
        mainTextMatchedSubstrings: getStructList(
          data['main_text_matched_substrings'],
          MainTextMatchedSubstringsStruct.fromMap,
        ),
        secondaryText: data['secondary_text'] as String?,
      );

  static StructuredFormattingStruct? maybeFromMap(dynamic data) => data is Map
      ? StructuredFormattingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'main_text': _mainText,
        'main_text_matched_substrings':
            _mainTextMatchedSubstrings?.map((e) => e.toMap()).toList(),
        'secondary_text': _secondaryText,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'main_text': serializeParam(
          _mainText,
          ParamType.String,
        ),
        'main_text_matched_substrings': serializeParam(
          _mainTextMatchedSubstrings,
          ParamType.DataStruct,
          isList: true,
        ),
        'secondary_text': serializeParam(
          _secondaryText,
          ParamType.String,
        ),
      }.withoutNulls;

  static StructuredFormattingStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StructuredFormattingStruct(
        mainText: deserializeParam(
          data['main_text'],
          ParamType.String,
          false,
        ),
        mainTextMatchedSubstrings:
            deserializeStructParam<MainTextMatchedSubstringsStruct>(
          data['main_text_matched_substrings'],
          ParamType.DataStruct,
          true,
          structBuilder: MainTextMatchedSubstringsStruct.fromSerializableMap,
        ),
        secondaryText: deserializeParam(
          data['secondary_text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StructuredFormattingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StructuredFormattingStruct &&
        mainText == other.mainText &&
        listEquality.equals(
            mainTextMatchedSubstrings, other.mainTextMatchedSubstrings) &&
        secondaryText == other.secondaryText;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([mainText, mainTextMatchedSubstrings, secondaryText]);
}

StructuredFormattingStruct createStructuredFormattingStruct({
  String? mainText,
  String? secondaryText,
}) =>
    StructuredFormattingStruct(
      mainText: mainText,
      secondaryText: secondaryText,
    );
