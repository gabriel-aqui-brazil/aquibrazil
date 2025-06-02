import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'count_controller_cart_model.dart';
export 'count_controller_cart_model.dart';

class CountControllerCartWidget extends StatefulWidget {
  const CountControllerCartWidget({
    super.key,
    this.cb,
    this.actualValue,
  });

  final Future Function(int counterCB)? cb;
  final int? actualValue;

  @override
  State<CountControllerCartWidget> createState() =>
      _CountControllerCartWidgetState();
}

class _CountControllerCartWidgetState extends State<CountControllerCartWidget> {
  late CountControllerCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountControllerCartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0,
      height: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: FlutterFlowCountController(
        decrementIconBuilder: (enabled) => FaIcon(
          FontAwesomeIcons.minusCircle,
          color: enabled
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          size: 20.0,
        ),
        incrementIconBuilder: (enabled) => Icon(
          Icons.add_circle,
          color: enabled
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).alternate,
          size: 23.0,
        ),
        countBuilder: (count) => Text(
          count.toString(),
          style: FlutterFlowTheme.of(context).titleLarge.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
                fontSize: 18.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
              ),
        ),
        count: _model.countControllerValue ??=
            widget!.actualValue != null ? widget!.actualValue! : 0,
        updateCount: (count) async {
          safeSetState(() => _model.countControllerValue = count);
          await widget.cb?.call(
            _model.countControllerValue!,
          );
        },
        stepSize: 1,
        minimum: 0,
        contentPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
      ),
    );
  }
}
