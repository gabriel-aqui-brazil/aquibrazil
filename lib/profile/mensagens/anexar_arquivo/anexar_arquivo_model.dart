import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:convert';
import 'dart:ui';
import 'anexar_arquivo_widget.dart' show AnexarArquivoWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AnexarArquivoModel extends FlutterFlowModel<AnexarArquivoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataAnb = false;
  FFUploadedFile uploadedLocalFile_uploadDataAnb =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (POST IMAGEM CHAT)] action in Row widget.
  ApiCallResponse? apiUploadImageCopy;
  bool isDataUploading_uploadDataCbv = false;
  FFUploadedFile uploadedLocalFile_uploadDataCbv =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (POST IMAGEM CHAT)] action in Container widget.
  ApiCallResponse? apiUploadImage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
