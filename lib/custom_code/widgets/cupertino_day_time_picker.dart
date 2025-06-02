// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CupertinoDayTimePicker extends StatefulWidget {
  const CupertinoDayTimePicker({
    super.key,
    this.width,
    this.height,
    required this.timePreparation,
    required this.operatingHour,
    required this.language,
  });

  final double? width;
  final double? height;
  final int timePreparation;
  final List<aquibrazil_library_oi8i5r_data_schema.OperatingHourStruct>
      operatingHour;
  final String language;

  @override
  State<CupertinoDayTimePicker> createState() => _CupertinoDayTimePickerState();
}

class _CupertinoDayTimePickerState extends State<CupertinoDayTimePicker> {
  List<DateTime> datasDisponiveis = [];
  Map<DateTime, List<String>> horariosPorData = {};
  int diaIndex = 0;
  int horaIndex = 0;

  @override
  void initState() {
    super.initState();
    gerarHorariosDisponiveis();
  }

  String formatarData(DateTime data) {
    switch (widget.language) {
      case 'en':
        return DateFormat('MM/dd/yyyy').format(data);
      case 'es':
        return DateFormat('dd-MM-yyyy').format(data);
      case 'pt':
      default:
        return DateFormat('dd/MM/yyyy').format(data);
    }
  }

  void gerarHorariosDisponiveis() {
    final now = DateTime.now();
    final prepDuration = Duration(minutes: widget.timePreparation);
    final disponibilidadeGlobal = now.add(prepDuration);

    for (int i = 0; i < 180; i++) {
      final dataBase =
          DateTime(now.year, now.month, now.day).add(Duration(days: i));
      final diaSemana = dataBase.weekday % 7;

      final operacoesDoDia =
          widget.operatingHour.where((op) => op.day == diaSemana).toList();
      if (operacoesDoDia.isEmpty) continue;

      final ultimaHoraFechamento = operacoesDoDia.map((op) {
        final fechamento = DateTime.fromMillisecondsSinceEpoch(op.closingHour!);
        return DateTime(dataBase.year, dataBase.month, dataBase.day,
            fechamento.hour, fechamento.minute);
      }).reduce((a, b) => a.isAfter(b) ? a : b);

      if (ultimaHoraFechamento.isBefore(disponibilidadeGlobal)) {
        continue;
      }

      List<String> horariosValidos = [];

      for (var op in operacoesDoDia) {
        final aberturaHora =
            DateTime.fromMillisecondsSinceEpoch(op.openingHour!);
        final fechamentoHora =
            DateTime.fromMillisecondsSinceEpoch(op.closingHour!);

        final aberturaReal = DateTime(
          dataBase.year,
          dataBase.month,
          dataBase.day,
          aberturaHora.hour,
          aberturaHora.minute,
        );

        final fechamentoReal = DateTime(
          dataBase.year,
          dataBase.month,
          dataBase.day,
          fechamentoHora.hour,
          fechamentoHora.minute,
        );

        final mesmoDia = dataBase.year == disponibilidadeGlobal.year &&
            dataBase.month == disponibilidadeGlobal.month &&
            dataBase.day == disponibilidadeGlobal.day;

        DateTime cursor = mesmoDia ? disponibilidadeGlobal : aberturaReal;
        final remainder = (15 - (cursor.minute % 15)) % 15;
        final roundedCursor = cursor.add(Duration(minutes: remainder));

        DateTime atual = roundedCursor;
        while (atual.isBefore(fechamentoReal)) {
          final horaFormatada = DateFormat('HH:mm').format(atual);
          horariosValidos.add(horaFormatada);
          atual = atual.add(Duration(minutes: 15));
        }
      }

      if (horariosValidos.isNotEmpty) {
        datasDisponiveis.add(dataBase);
        horariosPorData[dataBase] = horariosValidos;
      }
    }

    if (datasDisponiveis.isEmpty) {
      final fallbackDate = DateTime.now();
      datasDisponiveis.add(fallbackDate);
      horariosPorData[fallbackDate] = ['Indisponível'];
    }
  }

  void atualizarPreferredTimeDelivery() {
    final dataSelecionada = datasDisponiveis[diaIndex];
    final horaSelecionadaStr = horariosPorData[dataSelecionada]![horaIndex];
    final horaFormatada = DateFormat('HH:mm').parse(horaSelecionadaStr);

    final dataFinal = DateTime(
      dataSelecionada.year,
      dataSelecionada.month,
      dataSelecionada.day,
      horaFormatada.hour,
      horaFormatada.minute,
    );

    FFAppState().update(() {
      FFAppState().preferredTimeDelivery = dataFinal;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dataSelecionada = datasDisponiveis[diaIndex];
    final horarios = horariosPorData[dataSelecionada]!;

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 200,
      child: Row(
        children: [
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController:
                  FixedExtentScrollController(initialItem: diaIndex),
              onSelectedItemChanged: (index) {
                setState(() {
                  diaIndex = index;
                  horaIndex = 0;
                  atualizarPreferredTimeDelivery();
                });
              },
              children: datasDisponiveis
                  .map((d) => Center(child: Text(formatarData(d))))
                  .toList(),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 40,
              scrollController:
                  FixedExtentScrollController(initialItem: horaIndex),
              onSelectedItemChanged: (index) {
                setState(() {
                  horaIndex = index;
                  atualizarPreferredTimeDelivery();
                });
              },
              children: horarios.map((h) => Center(child: Text(h))).toList(),
            ),
          ),
        ],
      ),
    );
  }

  String get selectedValue {
    final data = datasDisponiveis[diaIndex];
    final hora = horariosPorData[data]![horaIndex];
    return '${formatarData(data)} $hora';
  }
}
