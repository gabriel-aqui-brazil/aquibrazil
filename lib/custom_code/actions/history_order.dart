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
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'dart:convert';

class WebSocketManager {
  static WebSocketChannel? _channel;

  static void setChannel(WebSocketChannel channel) {
    _channel?.sink.close();
    _channel = channel;
  }

  static void closeChannel() {
    _channel?.sink.close();
    _channel = null;
  }

  static WebSocketChannel? get channel => _channel;
}

Future historyOrder(
  BuildContext context,
  String channelName,
) async {
  final String connectionHash = 'PT2WpRCVWvgjsjmKZGLIYN90Vpw';

  try {
    WebSocketManager.closeChannel();

    final channel = WebSocketChannel.connect(
      Uri.parse('wss://x0lt-picx-zmmr.n7d.xano.io/rt/$connectionHash'),
    );

    WebSocketManager.setChannel(channel);

    final joinMessage = {
      "action": "join",
      "options": {
        "channel": channelName,
      },
      "payload": {
        "history": false,
        "presence": true,
      },
    };

    channel.sink.add(jsonEncode(joinMessage));

    channel.stream.listen(
      (message) {
        try {
          final decodedMessage = jsonDecode(message) as Map<String, dynamic>;
          final dynamic rawData = decodedMessage['payload']['data'];

          if (rawData != null && rawData is Map<String, dynamic>) {
            final newOrder =
                aquibrazil_library_oi8i5r_data_schema.OrderStruct.fromMap(
                    rawData);

            FFAppState().update(() {
              final index = FFAppState()
                  .historyOrder
                  .indexWhere((order) => order.id == newOrder.id);
              if (index != -1) {
                FFAppState().historyOrder[index] = newOrder;
              }
            });
          } else {
            throw Exception(
                'O formato do WebSocket não corresponde ao esperado.');
          }
        } catch (e) {
          throw Exception('Erro interno ao processar a mensagem WebSocket: $e');
        }
      },
      onDone: () {
        WebSocketManager.closeChannel();
        print('A conexão do WebSocket foi encerrada.');
      },
      onError: (error) {
        print('Erro no WebSocket: $error');
      },
    );
  } catch (e) {
    throw Exception('Falha ao conectar ao WebSocket: $e');
  }
}
