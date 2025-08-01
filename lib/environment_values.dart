import 'dart:convert';
import 'package:flutter/services.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _dataResource = data['dataResource'];
      _stripeKey = data['stripeKey'];
      _branchVar = data['branchVar'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _dataResource = '';
  String get dataResource => _dataResource;

  String _stripeKey = '';
  String get stripeKey => _stripeKey;

  String _branchVar = '';
  String get branchVar => _branchVar;
}
