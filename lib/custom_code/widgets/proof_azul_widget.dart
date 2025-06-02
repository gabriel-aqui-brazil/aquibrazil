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

import 'index.dart'; // Imports other custom widgets
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screenshot/screenshot.dart';

class ProofAzulWidget extends StatefulWidget {
  const ProofAzulWidget({
    super.key,
    this.width,
    this.height,
    required this.cashbackTotal,
    required this.cashbackAfter,
    required this.pontos,
    required this.dataLimite,
  });

  final double? width;
  final double? height;
  final double cashbackTotal;
  final String cashbackAfter;
  final double pontos;
  final DateTime dataLimite;

  @override
  State<ProofAzulWidget> createState() => _ProofAzulWidgetState();
}

class _ProofAzulWidgetState extends State<ProofAzulWidget> {
  final ScreenshotController _screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      captureAndShareScreenshot();
    });
  }

  void captureAndShareScreenshot() async {
    await Future.delayed(Duration(milliseconds: 500));
    final image = await _screenshotController.capture();

    if (image != null) {
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = '${directory.path}/screenshot.png';

      final file = File(imagePath);
      await file.writeAsBytes(image);

      await Share.shareXFiles([XFile(imagePath)]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final String formattedDate =
        DateFormat('MMM d, y', 'en_US').format(widget.dataLimite);
    return Screenshot(
      controller: _screenshotController,
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: const EdgeInsets.all(24),
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logosite_1.png',
              height: 40,
            ),
            const SizedBox(height: 20),
            const Text(
              'Seus pontos estarão disponíveis\nem breve na sua conta Azul.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'SOBRE SUA TROCA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            const SizedBox(height: 16),
            _row("SALDO DE CASHBACK", widget.cashbackTotal.toString()),
            const SizedBox(height: 8),
            _row("SALDO APÓS O RESGATE", widget.cashbackAfter),
            const SizedBox(height: 8),
            _row("PONTOS AZUL FIDELIDADE", "${widget.pontos} pts",
                valueColor: Colors.green),
            const Divider(height: 32),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "DATA LIMITE PARA RECEBER OS PONTOS",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _row(String label, String value, {Color valueColor = Colors.black}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.black87),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: valueColor),
        ),
      ],
    );
  }
}
