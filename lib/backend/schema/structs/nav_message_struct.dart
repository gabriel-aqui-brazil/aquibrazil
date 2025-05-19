// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NavMessageStruct extends BaseStruct {
  NavMessageStruct({
    int? curPage,
    int? nextPage,
    int? prevPage,
    List<MessagesStruct>? items,
  })  : _curPage = curPage,
        _nextPage = nextPage,
        _prevPage = prevPage,
        _items = items;

  // "curPage" field.
  int? _curPage;
  int get curPage => _curPage ?? 0;
  set curPage(int? val) => _curPage = val;

  void incrementCurPage(int amount) => curPage = curPage + amount;

  bool hasCurPage() => _curPage != null;

  // "nextPage" field.
  int? _nextPage;
  int get nextPage => _nextPage ?? 0;
  set nextPage(int? val) => _nextPage = val;

  void incrementNextPage(int amount) => nextPage = nextPage + amount;

  bool hasNextPage() => _nextPage != null;

  // "prevPage" field.
  int? _prevPage;
  int get prevPage => _prevPage ?? 0;
  set prevPage(int? val) => _prevPage = val;

  void incrementPrevPage(int amount) => prevPage = prevPage + amount;

  bool hasPrevPage() => _prevPage != null;

  // "items" field.
  List<MessagesStruct>? _items;
  List<MessagesStruct> get items => _items ?? const [];
  set items(List<MessagesStruct>? val) => _items = val;

  void updateItems(Function(List<MessagesStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  static NavMessageStruct fromMap(Map<String, dynamic> data) =>
      NavMessageStruct(
        curPage: castToType<int>(data['curPage']),
        nextPage: castToType<int>(data['nextPage']),
        prevPage: castToType<int>(data['prevPage']),
        items: getStructList(
          data['items'],
          MessagesStruct.fromMap,
        ),
      );

  static NavMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? NavMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'curPage': _curPage,
        'nextPage': _nextPage,
        'prevPage': _prevPage,
        'items': _items?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'curPage': serializeParam(
          _curPage,
          ParamType.int,
        ),
        'nextPage': serializeParam(
          _nextPage,
          ParamType.int,
        ),
        'prevPage': serializeParam(
          _prevPage,
          ParamType.int,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static NavMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      NavMessageStruct(
        curPage: deserializeParam(
          data['curPage'],
          ParamType.int,
          false,
        ),
        nextPage: deserializeParam(
          data['nextPage'],
          ParamType.int,
          false,
        ),
        prevPage: deserializeParam(
          data['prevPage'],
          ParamType.int,
          false,
        ),
        items: deserializeStructParam<MessagesStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: MessagesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'NavMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NavMessageStruct &&
        curPage == other.curPage &&
        nextPage == other.nextPage &&
        prevPage == other.prevPage &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([curPage, nextPage, prevPage, items]);
}

NavMessageStruct createNavMessageStruct({
  int? curPage,
  int? nextPage,
  int? prevPage,
}) =>
    NavMessageStruct(
      curPage: curPage,
      nextPage: nextPage,
      prevPage: prevPage,
    );
