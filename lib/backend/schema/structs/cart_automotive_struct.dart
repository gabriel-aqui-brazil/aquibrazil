// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartAutomotiveStruct extends BaseStruct {
  CartAutomotiveStruct({
    BaseProductStruct? schedule,
    CompanyStruct? company,
    DateTime? startDate,
    DateTime? endDate,
  })  : _schedule = schedule,
        _company = company,
        _startDate = startDate,
        _endDate = endDate;

  // "schedule" field.
  BaseProductStruct? _schedule;
  BaseProductStruct get schedule => _schedule ?? BaseProductStruct();
  set schedule(BaseProductStruct? val) => _schedule = val;

  void updateSchedule(Function(BaseProductStruct) updateFn) {
    updateFn(_schedule ??= BaseProductStruct());
  }

  bool hasSchedule() => _schedule != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  static CartAutomotiveStruct fromMap(Map<String, dynamic> data) =>
      CartAutomotiveStruct(
        schedule: data['schedule'] is BaseProductStruct
            ? data['schedule']
            : BaseProductStruct.maybeFromMap(data['schedule']),
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
      );

  static CartAutomotiveStruct? maybeFromMap(dynamic data) => data is Map
      ? CartAutomotiveStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'schedule': _schedule?.toMap(),
        'company': _company?.toMap(),
        'start_date': _startDate,
        'end_date': _endDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'schedule': serializeParam(
          _schedule,
          ParamType.DataStruct,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CartAutomotiveStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartAutomotiveStruct(
        schedule: deserializeStructParam(
          data['schedule'],
          ParamType.DataStruct,
          false,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CartAutomotiveStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartAutomotiveStruct &&
        schedule == other.schedule &&
        company == other.company &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([schedule, company, startDate, endDate]);
}

CartAutomotiveStruct createCartAutomotiveStruct({
  BaseProductStruct? schedule,
  CompanyStruct? company,
  DateTime? startDate,
  DateTime? endDate,
}) =>
    CartAutomotiveStruct(
      schedule: schedule ?? BaseProductStruct(),
      company: company ?? CompanyStruct(),
      startDate: startDate,
      endDate: endDate,
    );
