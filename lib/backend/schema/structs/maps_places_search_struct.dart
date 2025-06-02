// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapsPlacesSearchStruct extends BaseStruct {
  MapsPlacesSearchStruct({
    List<PredictionsStruct>? predictions,
    String? status,
  })  : _predictions = predictions,
        _status = status;

  // "predictions" field.
  List<PredictionsStruct>? _predictions;
  List<PredictionsStruct> get predictions => _predictions ?? const [];
  set predictions(List<PredictionsStruct>? val) => _predictions = val;

  void updatePredictions(Function(List<PredictionsStruct>) updateFn) {
    updateFn(_predictions ??= []);
  }

  bool hasPredictions() => _predictions != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static MapsPlacesSearchStruct fromMap(Map<String, dynamic> data) =>
      MapsPlacesSearchStruct(
        predictions: getStructList(
          data['predictions'],
          PredictionsStruct.fromMap,
        ),
        status: data['status'] as String?,
      );

  static MapsPlacesSearchStruct? maybeFromMap(dynamic data) => data is Map
      ? MapsPlacesSearchStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'predictions': _predictions?.map((e) => e.toMap()).toList(),
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'predictions': serializeParam(
          _predictions,
          ParamType.DataStruct,
          isList: true,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static MapsPlacesSearchStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MapsPlacesSearchStruct(
        predictions: deserializeStructParam<PredictionsStruct>(
          data['predictions'],
          ParamType.DataStruct,
          true,
          structBuilder: PredictionsStruct.fromSerializableMap,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MapsPlacesSearchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MapsPlacesSearchStruct &&
        listEquality.equals(predictions, other.predictions) &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([predictions, status]);
}

MapsPlacesSearchStruct createMapsPlacesSearchStruct({
  String? status,
}) =>
    MapsPlacesSearchStruct(
      status: status,
    );
