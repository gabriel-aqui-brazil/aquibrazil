// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllCategoryStruct extends BaseStruct {
  AllCategoryStruct({
    List<CategoryStruct>? categoryDefault,
    List<CategoryStruct>? category,
  })  : _categoryDefault = categoryDefault,
        _category = category;

  // "category_default" field.
  List<CategoryStruct>? _categoryDefault;
  List<CategoryStruct> get categoryDefault => _categoryDefault ?? const [];
  set categoryDefault(List<CategoryStruct>? val) => _categoryDefault = val;

  void updateCategoryDefault(Function(List<CategoryStruct>) updateFn) {
    updateFn(_categoryDefault ??= []);
  }

  bool hasCategoryDefault() => _categoryDefault != null;

  // "category" field.
  List<CategoryStruct>? _category;
  List<CategoryStruct> get category => _category ?? const [];
  set category(List<CategoryStruct>? val) => _category = val;

  void updateCategory(Function(List<CategoryStruct>) updateFn) {
    updateFn(_category ??= []);
  }

  bool hasCategory() => _category != null;

  static AllCategoryStruct fromMap(Map<String, dynamic> data) =>
      AllCategoryStruct(
        categoryDefault: getStructList(
          data['category_default'],
          CategoryStruct.fromMap,
        ),
        category: getStructList(
          data['category'],
          CategoryStruct.fromMap,
        ),
      );

  static AllCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? AllCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category_default': _categoryDefault?.map((e) => e.toMap()).toList(),
        'category': _category?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_default': serializeParam(
          _categoryDefault,
          ParamType.DataStruct,
          isList: true,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AllCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllCategoryStruct(
        categoryDefault: deserializeStructParam<CategoryStruct>(
          data['category_default'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        category: deserializeStructParam<CategoryStruct>(
          data['category'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AllCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllCategoryStruct &&
        listEquality.equals(categoryDefault, other.categoryDefault) &&
        listEquality.equals(category, other.category);
  }

  @override
  int get hashCode => const ListEquality().hash([categoryDefault, category]);
}

AllCategoryStruct createAllCategoryStruct() => AllCategoryStruct();
