import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import 'package:ff_commons/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _searchHistory = await secureStorage.getStringList('ff_searchHistory') ??
          _searchHistory;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_address') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_address') ?? '{}';
          _address =
              AddressStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _tokenFCM = await secureStorage.getString('ff_tokenFCM') ?? _tokenFCM;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_cart') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_cart') ?? '{}';
          _cart = aquibrazil_library_oi8i5r_data_schema.CartStruct
              .fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_orderSelected') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_orderSelected') ?? '{}';
          _orderSelected = aquibrazil_library_oi8i5r_data_schema.OrderStruct
              .fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _appVersion =
          await secureStorage.getString('ff_appVersion') ?? _appVersion;
    });
    await _safeInitAsync(() async {
      _lastCacheTime = await secureStorage.read(key: 'ff_lastCacheTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_lastCacheTime'))!)
          : _lastCacheTime;
    });
    await _safeInitAsync(() async {
      _isCacheOverride =
          await secureStorage.getBool('ff_isCacheOverride') ?? _isCacheOverride;
    });
    await _safeInitAsync(() async {
      _actualVersion =
          await secureStorage.getString('ff_actualVersion') ?? _actualVersion;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _searchHistory = [];
  List<String> get searchHistory => _searchHistory;
  set searchHistory(List<String> value) {
    _searchHistory = value;
    secureStorage.setStringList('ff_searchHistory', value);
  }

  void deleteSearchHistory() {
    secureStorage.delete(key: 'ff_searchHistory');
  }

  void addToSearchHistory(String value) {
    searchHistory.add(value);
    secureStorage.setStringList('ff_searchHistory', _searchHistory);
  }

  void removeFromSearchHistory(String value) {
    searchHistory.remove(value);
    secureStorage.setStringList('ff_searchHistory', _searchHistory);
  }

  void removeAtIndexFromSearchHistory(int index) {
    searchHistory.removeAt(index);
    secureStorage.setStringList('ff_searchHistory', _searchHistory);
  }

  void updateSearchHistoryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchHistory[index] = updateFn(_searchHistory[index]);
    secureStorage.setStringList('ff_searchHistory', _searchHistory);
  }

  void insertAtIndexInSearchHistory(int index, String value) {
    searchHistory.insert(index, value);
    secureStorage.setStringList('ff_searchHistory', _searchHistory);
  }

  String _signupEmailToValidate = '';
  String get signupEmailToValidate => _signupEmailToValidate;
  set signupEmailToValidate(String value) {
    _signupEmailToValidate = value;
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  String _phoneCountrySelected = '';
  String get phoneCountrySelected => _phoneCountrySelected;
  set phoneCountrySelected(String value) {
    _phoneCountrySelected = value;
  }

  FilterHomeStruct _filterHome =
      FilterHomeStruct.fromSerializableMap(jsonDecode('{}'));
  FilterHomeStruct get filterHome => _filterHome;
  set filterHome(FilterHomeStruct value) {
    _filterHome = value;
  }

  void updateFilterHomeStruct(Function(FilterHomeStruct) updateFn) {
    updateFn(_filterHome);
  }

  AddressStruct _address = AddressStruct();
  AddressStruct get address => _address;
  set address(AddressStruct value) {
    _address = value;
    secureStorage.setString('ff_address', value.serialize());
  }

  void deleteAddress() {
    secureStorage.delete(key: 'ff_address');
  }

  void updateAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(_address);
    secureStorage.setString('ff_address', _address.serialize());
  }

  String _tokenFCM = '';
  String get tokenFCM => _tokenFCM;
  set tokenFCM(String value) {
    _tokenFCM = value;
    secureStorage.setString('ff_tokenFCM', value);
  }

  void deleteTokenFCM() {
    secureStorage.delete(key: 'ff_tokenFCM');
  }

  aquibrazil_library_oi8i5r_data_schema.CartStruct _cart =
      aquibrazil_library_oi8i5r_data_schema.CartStruct();
  aquibrazil_library_oi8i5r_data_schema.CartStruct get cart => _cart;
  set cart(aquibrazil_library_oi8i5r_data_schema.CartStruct value) {
    _cart = value;
    secureStorage.setString('ff_cart', value.serialize());
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  void updateCartStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.CartStruct) updateFn) {
    updateFn(_cart);
    secureStorage.setString('ff_cart', _cart.serialize());
  }

  List<aquibrazil_library_oi8i5r_data_schema.OrderStruct> _historyOrder = [];
  List<aquibrazil_library_oi8i5r_data_schema.OrderStruct> get historyOrder =>
      _historyOrder;
  set historyOrder(
      List<aquibrazil_library_oi8i5r_data_schema.OrderStruct> value) {
    _historyOrder = value;
  }

  void addToHistoryOrder(
      aquibrazil_library_oi8i5r_data_schema.OrderStruct value) {
    historyOrder.add(value);
  }

  void removeFromHistoryOrder(
      aquibrazil_library_oi8i5r_data_schema.OrderStruct value) {
    historyOrder.remove(value);
  }

  void removeAtIndexFromHistoryOrder(int index) {
    historyOrder.removeAt(index);
  }

  void updateHistoryOrderAtIndex(
    int index,
    aquibrazil_library_oi8i5r_data_schema.OrderStruct Function(
            aquibrazil_library_oi8i5r_data_schema.OrderStruct)
        updateFn,
  ) {
    historyOrder[index] = updateFn(_historyOrder[index]);
  }

  void insertAtIndexInHistoryOrder(
      int index, aquibrazil_library_oi8i5r_data_schema.OrderStruct value) {
    historyOrder.insert(index, value);
  }

  aquibrazil_library_oi8i5r_data_schema.OrderStruct _orderSelected =
      aquibrazil_library_oi8i5r_data_schema.OrderStruct();
  aquibrazil_library_oi8i5r_data_schema.OrderStruct get orderSelected =>
      _orderSelected;
  set orderSelected(aquibrazil_library_oi8i5r_data_schema.OrderStruct value) {
    _orderSelected = value;
    secureStorage.setString('ff_orderSelected', value.serialize());
  }

  void deleteOrderSelected() {
    secureStorage.delete(key: 'ff_orderSelected');
  }

  void updateOrderSelectedStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.OrderStruct) updateFn) {
    updateFn(_orderSelected);
    secureStorage.setString('ff_orderSelected', _orderSelected.serialize());
  }

  aquibrazil_library_oi8i5r_data_schema.CardStruct _paymentMethodSelected =
      aquibrazil_library_oi8i5r_data_schema.CardStruct();
  aquibrazil_library_oi8i5r_data_schema.CardStruct get paymentMethodSelected =>
      _paymentMethodSelected;
  set paymentMethodSelected(
      aquibrazil_library_oi8i5r_data_schema.CardStruct value) {
    _paymentMethodSelected = value;
  }

  void updatePaymentMethodSelectedStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.CardStruct) updateFn) {
    updateFn(_paymentMethodSelected);
  }

  aquibrazil_library_oi8i5r_data_schema.PriceStruct _membershipPlanSelected =
      aquibrazil_library_oi8i5r_data_schema.PriceStruct();
  aquibrazil_library_oi8i5r_data_schema.PriceStruct
      get membershipPlanSelected => _membershipPlanSelected;
  set membershipPlanSelected(
      aquibrazil_library_oi8i5r_data_schema.PriceStruct value) {
    _membershipPlanSelected = value;
  }

  void updateMembershipPlanSelectedStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.PriceStruct) updateFn) {
    updateFn(_membershipPlanSelected);
  }

  List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct> _addons =
      [];
  List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct>
      get addons => _addons;
  set addons(
      List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct>
          value) {
    _addons = value;
  }

  void addToAddons(
      aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct value) {
    addons.add(value);
  }

  void removeFromAddons(
      aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct value) {
    addons.remove(value);
  }

  void removeAtIndexFromAddons(int index) {
    addons.removeAt(index);
  }

  void updateAddonsAtIndex(
    int index,
    aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct Function(
            aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct)
        updateFn,
  ) {
    addons[index] = updateFn(_addons[index]);
  }

  void insertAtIndexInAddons(int index,
      aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct value) {
    addons.insert(index, value);
  }

  DateTime? _preferredTimeDelivery;
  DateTime? get preferredTimeDelivery => _preferredTimeDelivery;
  set preferredTimeDelivery(DateTime? value) {
    _preferredTimeDelivery = value;
  }

  String _appVersion = '0.0.0';
  String get appVersion => _appVersion;
  set appVersion(String value) {
    _appVersion = value;
    secureStorage.setString('ff_appVersion', value);
  }

  void deleteAppVersion() {
    secureStorage.delete(key: 'ff_appVersion');
  }

  DateTime? _lastCacheTime;
  DateTime? get lastCacheTime => _lastCacheTime;
  set lastCacheTime(DateTime? value) {
    _lastCacheTime = value;
    value != null
        ? secureStorage.setInt('ff_lastCacheTime', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_lastCacheTime');
  }

  void deleteLastCacheTime() {
    secureStorage.delete(key: 'ff_lastCacheTime');
  }

  bool _isCacheOverride = false;
  bool get isCacheOverride => _isCacheOverride;
  set isCacheOverride(bool value) {
    _isCacheOverride = value;
    secureStorage.setBool('ff_isCacheOverride', value);
  }

  void deleteIsCacheOverride() {
    secureStorage.delete(key: 'ff_isCacheOverride');
  }

  String _actualVersion = '1.0.14';
  String get actualVersion => _actualVersion;
  set actualVersion(String value) {
    _actualVersion = value;
    secureStorage.setString('ff_actualVersion', value);
  }

  void deleteActualVersion() {
    secureStorage.delete(key: 'ff_actualVersion');
  }

  final _cacheHomePageManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheHomePage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheHomePageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheHomePageCache() => _cacheHomePageManager.clear();
  void clearCacheHomePageCacheKey(String? uniqueKey) =>
      _cacheHomePageManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
