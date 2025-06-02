import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;

dynamic latLngToJson(LatLng latLng) {
  return {
    'lat': latLng.latitude,
    'lng': latLng.longitude,
  };
}

bool passwordCheck(String? pass) {
  if (pass == null || pass == '') return false;

  bool moreThan8Char = false;
  bool hasDigit = false;

  if (pass.length >= 8) {
    moreThan8Char = true;
  }

  if (RegExp(r'[0-9]').hasMatch(pass)) {
    hasDigit = true;
  }

  return moreThan8Char && hasDigit;
}

int lengthString(String str) {
  return str.length;
}

List<DateTime> calendarMonth(
  DateTime? date,
  String? type,
) {
  List<DateTime> monthDates = [];

  DateTime currentDate = date ?? DateTime.now();
  DateTime firstDayOfMonth = DateTime(currentDate.year, currentDate.month, 1);

  int daysToSunday = firstDayOfMonth.weekday % 7;
  DateTime firstSunday = firstDayOfMonth.subtract(Duration(days: daysToSunday));

  DateTime placeholderDate = DateTime(9999, 12, 31);

  for (int i = 0; i < daysToSunday; i++) {
    monthDates.add(placeholderDate);
  }

  int daysInMonth = DateTime(currentDate.year, currentDate.month + 1, 0).day;
  for (int i = 0; i < daysInMonth; i++) {
    monthDates.add(firstDayOfMonth.add(Duration(days: i)));
  }

  if (type == 'next') {
    currentDate = DateTime(currentDate.year, currentDate.month + 1, 1);
    return calendarMonth(currentDate, null);
  } else if (type == 'previous') {
    currentDate = DateTime(currentDate.year, currentDate.month - 1, 1);
    return calendarMonth(currentDate, null);
  }

  return monthDates;
}

int? returnDateRangeInteger(
  DateTime? checkIn,
  DateTime? checkOut,
) {
  // take the checkIn date and checkOut date and return the number of days in between
  if (checkIn == null || checkOut == null) return null;
  final difference = checkOut.difference(checkIn);
  return difference.inDays;
}

String toUpperCase(String? text) {
  if (text == null) {
    return '';
  }
  return text.toUpperCase();
}

LatLng convertLatLng(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

double calculateFinalValue(
  double extraDiscount,
  int individualDiscount,
  int defaultDiscount,
  double price,
) {
  double totalDiscount =
      (extraDiscount == 0) ? individualDiscount.toDouble() : extraDiscount;
  totalDiscount += defaultDiscount.toDouble();
  double finalValue = ((100 - totalDiscount) * price) / 100;

  return finalValue;
}

DateTime appointmentDateTime(
  String date,
  int timeTimestamp,
) {
  DateTime parsedDate = DateTime.parse(date);
  DateTime parsedTime = DateTime.fromMillisecondsSinceEpoch(timeTimestamp);

  DateTime combinedDateTime = DateTime(
    parsedDate.year,
    parsedDate.month,
    parsedDate.day,
    parsedTime.hour,
    parsedTime.minute,
    parsedTime.second,
    parsedTime.millisecond,
    parsedTime.microsecond,
  );

  return combinedDateTime;
}

int? getIndexProduct(
  List<dynamic> itens,
  dynamic item,
) {
  final index = itens.indexWhere(
    (product) => product['base_product']['id'] == item['base_product']['id'],
  );

  return index != -1 ? index : null;
}

double amountCart(List<double> prices) {
  return prices.fold(0, (amount, price) => amount + price);
}

String latlngToString(LatLng position) {
  return '${position.latitude}, ${position.longitude}';
}

String getAddressFromIndex(
  String address,
  int startIndex,
  int endIndex,
) {
  List<String> parts = address.split(',');
  if (startIndex < 0 || startIndex >= parts.length) {
    return '';
  }

  if (endIndex == 99 || endIndex >= parts.length) {
    endIndex = parts.length - 1;
  }

  return parts.sublist(startIndex, endIndex + 1).join(',').trim();
}

int? getIndexAddon(
  List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct> itens,
  aquibrazil_library_oi8i5r_data_schema.AddonStruct? item,
) {
  return itens.indexWhere((addon) => addon?.id == item?.id);
}

List<String> getAddonsMandatoryisNotSet(
  List<aquibrazil_library_oi8i5r_data_schema.AddonGroupStruct> addonGroup,
  List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct> addons,
) {
  List<String> mandatoryGroupNamesWithoutItems = [];

  for (var group in addonGroup) {
    if (group.isMandatory) {
      bool hasItems = addons.any((addon) {
        return addon.addonGroup?.id == group.id;
      });

      if (!hasItems) {
        mandatoryGroupNamesWithoutItems.add(group.name);
      }
    }
  }

  return mandatoryGroupNamesWithoutItems;
}

double sumAddons(
    List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct> addon) {
  double totalSum = 0;

  for (var item in addon) {
    totalSum += (item.quantity * item.unitPrice);
  }

  return totalSum;
}

int getItensGroup(
  aquibrazil_library_oi8i5r_data_schema.AddonGroupStruct addonGroup,
  List<aquibrazil_library_oi8i5r_data_schema.CartProductAddonStruct> addons,
) {
  int itemCount = 0;

  for (var addon in addons) {
    if (addon.addonGroup?.id == addonGroup.id) {
      itemCount += addon
          .quantity; // Soma a quantidade de itens para o grupo correspondente
    }
  }

  return itemCount;
}

bool isFutureDate(String dateStr) {
  DateTime inputDate = DateTime.parse(dateStr);
  DateTime today = DateTime.now();

  DateTime todayDateOnly = DateTime(today.year, today.month, today.day);

  return inputDate.isAfter(todayDateOnly) ||
      inputDate.isAtSameMomentAs(todayDateOnly);
}

int appointmentApproveLimit(int timestampMs) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestampMs);
  DateTime newDate = date.add(Duration(hours: 1));
  Duration diff = newDate.difference(DateTime.now());
  return diff.inMilliseconds;
}

DateTime calculateDate(DateTime dataNow) {
  return dataNow.add(Duration(days: 2));
}

int timeScheduleCancel(int cancelAt) {
  final now = DateTime.now();
  final cancelDate = DateTime.fromMillisecondsSinceEpoch(cancelAt);
  final difference = cancelDate.difference(now);
  return difference.isNegative ? 0 : difference.inMilliseconds;
}

String getDayName(
  String languageCode,
  int dayNumber,
) {
  String jsonString = '''
  {
    "en": [
      {"day": "Sunday", "number": 0},
      {"day": "Monday", "number": 1},
      {"day": "Tuesday", "number": 2},
      {"day": "Wednesday", "number": 3},
      {"day": "Thursday", "number": 4},
      {"day": "Friday", "number": 5},
      {"day": "Saturday", "number": 6}
    ],
    "pt": [
      {"day": "Domingo", "number": 0},
      {"day": "Segunda-feira", "number": 1},
      {"day": "Terça-feira", "number": 2},
      {"day": "Quarta-feira", "number": 3},
      {"day": "Quinta-feira", "number": 4},
      {"day": "Sexta-feira", "number": 5},
      {"day": "Sábado", "number": 6}
    ]
  }
  ''';

  Map<String, dynamic> daysList = jsonDecode(jsonString);

  List<dynamic> days = daysList[languageCode];

  for (var day in days) {
    if (day['number'] == dayNumber) {
      return day['day'];
    }
  }
  return '';
}

int getCurrentDayWeek() {
  int weekday = DateTime.now().weekday;
  return weekday % 7;
}

String? formatImage(String url) {
  // Verificar se a URL termina com .svg
  if (url.toLowerCase().endsWith('.svg')) {
    return 'svg';
  }

  // Para outros tipos de imagens
  return 'image';
}

bool validateCPF(String? document) {
  // Remover caracteres não numéricos
  document = document?.replaceAll(RegExp(r'\D'), '');

  // Verificar se o CPF tem 11 caracteres
  if (document == null || document.length != 11) {
    return false;
  }

  // Verificar se todos os dígitos são iguais (ex: 111.111.111-11)
  if (RegExp(r'(\d)\1{10}').hasMatch(document)) {
    return false;
  }

  // Validar o primeiro dígito verificador
  int sum1 = 0;
  for (int i = 0; i < 9; i++) {
    sum1 += int.parse(document[i]) * (10 - i);
  }
  int digit1 = (sum1 * 10) % 11;
  if (digit1 == 10 || digit1 == 11) digit1 = 0;
  if (int.parse(document[9]) != digit1) {
    return false;
  }

  // Validar o segundo dígito verificador
  int sum2 = 0;
  for (int i = 0; i < 10; i++) {
    sum2 += int.parse(document[i]) * (11 - i);
  }
  int digit2 = (sum2 * 10) % 11;
  if (digit2 == 10 || digit2 == 11) digit2 = 0;
  if (int.parse(document[10]) != digit2) {
    return false;
  }

  return true;
}

String formatHour(String hour) {
  List<String> parts = hour.split(':');
  int h = int.parse(parts[0]);
  String suffix = h >= 12 ? 'PM' : 'AM';
  int h12 = h % 12 == 0 ? 12 : h % 12;
  return '$h12:${parts[1]} $suffix';
}

String getTimeService(
  int duration,
  String language,
) {
  final translations = {
    'pt': {'hour': 'hora', 'hours': 'horas', 'min': 'min'},
    'en': {'hour': 'hour', 'hours': 'hours', 'min': 'min'},
    'es': {'hour': 'hora', 'hours': 'horas', 'min': 'min'},
  };

  final lang = translations[language] ?? translations['pt']!;

  if (duration % 60 == 0) {
    final hours = duration ~/ 60;
    final label = hours == 1 ? lang['hour']! : lang['hours']!;
    return '$hours $label';
  } else {
    return '$duration ${lang['min']!}';
  }
}

int timeServiceFinished(
  int date,
  int duration,
) {
  int durationInMillis = duration * 60 * 1000;

  return date + durationInMillis;
}

String uberUrlPtBr(
  String url,
  String language,
) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;
  final newSegments = [language, ...segments];
  final novaUri = uri.replace(pathSegments: newSegments);
  return novaUri.toString();
}

double cartSubtotal(List<dynamic> items) {
  double total = 0;

  for (var item in items) {
    double price = item['price_sum_with_addon'];
    int qty = item['quantity'];
    total += price * qty;
  }

  return total;
}
