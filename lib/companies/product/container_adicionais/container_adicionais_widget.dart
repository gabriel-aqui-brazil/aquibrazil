import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'container_adicionais_model.dart';
export 'container_adicionais_model.dart';

class ContainerAdicionaisWidget extends StatefulWidget {
  const ContainerAdicionaisWidget({
    super.key,
    this.addonDetails,
    required this.baseProduct,
    required this.addonGroup,
  });

  final aquibrazil_library_oi8i5r_data_schema.AddonStruct? addonDetails;
  final aquibrazil_library_oi8i5r_data_schema.BaseProductStruct? baseProduct;
  final aquibrazil_library_oi8i5r_data_schema.AddonGroupStruct? addonGroup;

  @override
  State<ContainerAdicionaisWidget> createState() =>
      _ContainerAdicionaisWidgetState();
}

class _ContainerAdicionaisWidgetState extends State<ContainerAdicionaisWidget> {
  late ContainerAdicionaisModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContainerAdicionaisModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget!.addonDetails?.imageUrl,
                        'https://firebasestorage.googleapis.com/v0/b/aquibrazil-40ba0.appspot.com/o/foto_backgorund_alimento.png?alt=media&token=612ee640-432e-4c9e-b942-bd4c6a0d5c05',
                      ),
                      width: 55.0,
                      height: 55.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                functions
                                    .toUpperCase(widget!.addonDetails?.name),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    '1c3k1wdv' /* +  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.rubik(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                TextSpan(
                                  text: formatNumber(
                                    widget!.addonDetails!.price,
                                    formatType: FormatType.custom,
                                    currency: '\$',
                                    format: '#,##0.00',
                                    locale: 'en_us',
                                  ),
                                  style: GoogleFonts.roboto(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
            Container(
              width: 100.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 40.0,
                      buttonSize: 24.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      disabledColor: FlutterFlowTheme.of(context).alternate,
                      icon: FaIcon(
                        FontAwesomeIcons.minus,
                        color: FlutterFlowTheme.of(context).info,
                        size: 8.0,
                      ),
                      onPressed: ((FFAppState()
                                      .addons
                                      .where((e) =>
                                          e.id == widget!.addonDetails?.id)
                                      .toList()
                                      .isNotEmpty
                                  ? FFAppState()
                                      .addons
                                      .where((e) =>
                                          e.id == widget!.addonDetails?.id)
                                      .toList()
                                      .length
                                      .toString()
                                  : '0') ==
                              '0')
                          ? null
                          : () async {
                              if (FFAppState()
                                      .addons
                                      .where((e) =>
                                          e.id == widget!.addonDetails?.id)
                                      .toList()
                                      .firstOrNull
                                      ?.quantity ==
                                  1) {
                                FFAppState().removeAtIndexFromAddons(
                                    functions.getIndexAddon(
                                        FFAppState().addons.toList(),
                                        widget!.addonDetails)!);
                                FFAppState().update(() {});
                                return;
                              }
                              if (FFAppState()
                                  .addons
                                  .where(
                                      (e) => e.id == widget!.addonDetails?.id)
                                  .toList()
                                  .isNotEmpty) {
                                FFAppState().updateAddonsAtIndex(
                                  functions.getIndexAddon(
                                      FFAppState().addons.toList(),
                                      widget!.addonDetails)!,
                                  (e) => e..incrementQuantity(-1),
                                );
                                FFAppState().update(() {});
                              }
                            },
                    ),
                    Text(
                      valueOrDefault<String>(
                        FFAppState()
                                .addons
                                .where((e) => e.id == widget!.addonDetails?.id)
                                .toList()
                                .isNotEmpty
                            ? FFAppState()
                                .addons
                                .where((e) => e.id == widget!.addonDetails?.id)
                                .toList()
                                .firstOrNull
                                ?.quantity
                                ?.toString()
                            : '0',
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 40.0,
                      buttonSize: 24.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      disabledColor: FlutterFlowTheme.of(context).alternate,
                      icon: FaIcon(
                        FontAwesomeIcons.plus,
                        color: FlutterFlowTheme.of(context).info,
                        size: 8.0,
                      ),
                      onPressed: (functions.getItensGroup(widget!.addonGroup!,
                                  FFAppState().addons.toList()) >=
                              widget!.addonGroup!.maxQuantity)
                          ? null
                          : () async {
                              if (FFAppState()
                                  .addons
                                  .where(
                                      (e) => e.id == widget!.addonDetails?.id)
                                  .toList()
                                  .isNotEmpty) {
                                FFAppState().updateAddonsAtIndex(
                                  functions.getIndexAddon(
                                      FFAppState().addons.toList(),
                                      widget!.addonDetails)!,
                                  (e) => e..incrementQuantity(1),
                                );
                                FFAppState().update(() {});
                              } else {
                                FFAppState().addToAddons(
                                    aquibrazil_library_oi8i5r_data_schema
                                        .CartProductAddonStruct(
                                  id: widget!.addonDetails?.id,
                                  name: widget!.addonDetails?.name,
                                  addonGroup: widget!.addonGroup,
                                  quantity: 1,
                                  pizzaId: widget!.addonGroup?.id,
                                  productAddonId: widget!.baseProduct?.id,
                                  unitPrice: widget!.addonDetails?.price,
                                ));
                                FFAppState().update(() {});
                              }
                            },
                    ),
                  ],
                ),
              ),
            ),
          ].divide(SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
