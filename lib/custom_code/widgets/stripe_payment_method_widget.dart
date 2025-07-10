// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_stripe/flutter_stripe.dart';

class StripePaymentMethodWidget extends StatefulWidget {
  final String publishableKey;
  final String name;
  final String email;
  final Future Function(String paymentMethodId, bool paymentSuccess)
      onPaymentMethodCreated;
  final double? width;
  final double? height;

  const StripePaymentMethodWidget({
    Key? key,
    required this.publishableKey,
    required this.name,
    required this.email,
    required this.onPaymentMethodCreated,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  _StripePaymentMethodWidgetState createState() =>
      _StripePaymentMethodWidgetState();
}

class _StripePaymentMethodWidgetState extends State<StripePaymentMethodWidget> {
  bool _isLoading = false;
  bool _isCardComplete = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async => await _initializeStripe());
  }

  Future<void> _initializeStripe() async {
    Stripe.publishableKey = widget.publishableKey;
    await Stripe.instance.applySettings();
  }

  Future<void> _createPaymentMethod() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final paymentMethod = await Stripe.instance.createPaymentMethod(
        params: PaymentMethodParams.card(
          paymentMethodData: PaymentMethodData(
            billingDetails: BillingDetails(
              name: widget.name,
              email: widget.email,
            ),
          ),
        ),
      );
      await widget.onPaymentMethodCreated(paymentMethod.id, true);
    } catch (error) {
      await widget.onPaymentMethodCreated('', false);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardField(
          onCardChanged: (details) {
            setState(() {
              _isCardComplete = details?.complete ?? false;
            });
          },
          decoration: InputDecoration(
            filled: true,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).alternate,
                width: 0.7,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed:
              (_isLoading || !_isCardComplete) ? null : _createPaymentMethod,
          style: ElevatedButton.styleFrom(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: _isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('PROCESSANDO...'),
                  ],
                )
              : const Text('SALVAR CARTÃO'),
        ),
      ],
    );
  }
}
