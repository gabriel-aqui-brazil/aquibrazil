import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_appbar_model.dart';
export 'custom_appbar_model.dart';

class CustomAppbarWidget extends StatefulWidget {
  const CustomAppbarWidget({
    super.key,
    required this.title,
    required this.actionBtn,
    bool? notShowTitle,
  }) : this.notShowTitle = notShowTitle ?? false;

  final String? title;
  final Future Function()? actionBtn;
  final bool notShowTitle;

  @override
  State<CustomAppbarWidget> createState() => _CustomAppbarWidgetState();
}

class _CustomAppbarWidgetState extends State<CustomAppbarWidget> {
  late CustomAppbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomAppbarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().lastOrder.id != null &&
          FFAppState().lastOrder.id != '') {
        _model.apiResultp5u = await MainGroup.getOrderCall.call(
          orderId: FFAppState().lastOrder.id,
          token: currentAuthenticationToken,
        );

        if ((_model.apiResultp5u?.succeeded ?? true)) {
          FFAppState().lastOrder =
              aquibrazil_library_oi8i5r_data_schema.OrderStruct.maybeFromMap(
                  (_model.apiResultp5u?.jsonBody ?? ''))!;
          FFAppState().update(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Builder(
            builder: (context) {
              if (FFAppState().lastOrder.hasId() &&
                  (FFAppState().lastOrder.status != 'Concluido') &&
                  (FFAppState().lastOrder.status != 'Agendado') &&
                  (FFAppState().lastOrder.status != 'Cancelado') &&
                  (FFAppState().lastOrder.status != 'Recusado')) {
                return wrapWithModel(
                  model: _model.orderInProgressModel,
                  updateCallback: () => safeSetState(() {}),
                  child: OrderInProgressWidget(),
                );
              } else {
                return Visibility(
                  visible: !widget!.notShowTitle,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          await widget.actionBtn?.call();
                        },
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(-0.2, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget!.title,
                              '-',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Anton',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
