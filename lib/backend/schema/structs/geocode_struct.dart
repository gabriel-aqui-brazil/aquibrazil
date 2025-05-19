// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeocodeStruct extends BaseStruct {
  GeocodeStruct({
    List<ResultsStruct>? results,
  }) : _results = results;

  // "results" field.
  List<ResultsStruct>? _results;
  List<ResultsStruct> get results => _results ?? const [];
  set results(List<ResultsStruct>? val) => _results = val;

  void updateResults(Function(List<ResultsStruct>) updateFn) {
    updateFn(_results ??= []);
  }

  bool hasResults() => _results != null;

  static GeocodeStruct fromMap(Map<String, dynamic> data) => GeocodeStruct(
        results: getStructList(
          data['results'],
          ResultsStruct.fromMap,
        ),
      );

  static GeocodeStruct? maybeFromMap(dynamic data) =>
      data is Map ? GeocodeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'results': _results?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static GeocodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeocodeStruct(
        results: deserializeStructParam<ResultsStruct>(
          data['results'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GeocodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GeocodeStruct &&
        listEquality.equals(results, other.results);
  }

  @override
  int get hashCode => const ListEquality().hash([results]);
}

GeocodeStruct createGeocodeStruct() => GeocodeStruct();
