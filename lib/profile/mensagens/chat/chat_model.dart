import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/mensagens/anexar_arquivo/anexar_arquivo_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import 'chat_widget.dart' show ChatWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  List<ChatMessageStruct> chatHistory = [];
  void addToChatHistory(ChatMessageStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ChatMessageStruct item) =>
      chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ChatMessageStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(
          int index, Function(ChatMessageStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GET Messages)] action in chat widget.
  ApiCallResponse? mensagemAction;
  // State field(s) for InputMessage widget.
  FocusNode? inputMessageFocusNode;
  TextEditingController? inputMessageTextController;
  String? Function(BuildContext, String?)? inputMessageTextControllerValidator;
  // Stores action output result for [Backend Call - API (POST Chat message)] action in Image widget.
  ApiCallResponse? apiPostChatMessage;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    inputMessageFocusNode?.dispose();
    inputMessageTextController?.dispose();

    listViewController?.dispose();
  }
}
