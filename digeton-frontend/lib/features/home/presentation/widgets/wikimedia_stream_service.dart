import 'dart:convert';

import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

class WikimediaStreamService {
  WebSocketChannel? _channel;

  Future<void> connect() async {
    try {
      _channel = WebSocketChannel.connect(
        Uri.parse('wss://stream.wikimedia.org/v2/stream/recentchange'),
      );
      print('WebSocket connected.');
    } catch (e) {
      print('WebSocket connection error: $e');
      _channel = null;
    }
  }

  Stream<Map<String, dynamic>>? get recentChanges {
    if (_channel == null) {
      print('WebSocket is not connected.');
      return null;
    }

    return _channel!.stream.map((event) {
      try {
        return jsonDecode(event as String) as Map<String, dynamic>;
      } catch (e) {
        print('Error decoding JSON: $e');
        return <String, dynamic>{};
      }
    });
  }

  void dispose() {
    _channel?.sink.close(status.goingAway);
  }
}
