import 'package:http/http.dart' as http;
import 'dart:convert';

import 'log.dart';

class Network {

  Network() {
    Log.d('Network()');
  }

  Future<List> requestCommand(String command) async {
    var commandString = command;
    Log.d('commandString = [$commandString]');
    try {
      var response = await http.get(Uri.parse(commandString));
      if (response.statusCode == 200) {
        // Log.d('response = ${response.body}');
        var decodeBody = utf8.decode(response.bodyBytes);
        var jsonData = json.decode(decodeBody) as List;
        return jsonData;
      } else {
        Log.e('error = ${response.statusCode}');
        return [];
      }
    } on Exception catch (e) {
      Log.e('exception = ${e.toString()}');
      return [];
    }
  }

  Future<Map<String, dynamic>> requestCommand2(String command) async {
    var commandString = command;
    Log.d('commandString = [$commandString]');
    try {
      var response = await http.get(Uri.parse(commandString));
      if (response.statusCode == 200) {
        // Log.d('response = ${response.body}');
        var decodeBody = utf8.decode(response.bodyBytes);
        var jsonData = json.decode(decodeBody) as Map<String, dynamic>;
        return jsonData;
      } else {
        Log.e('error = ${response.statusCode}');
        return {};
      }
    } on Exception catch (e) {
      Log.e('exception = ${e.toString()}');
      return {};
    }
  }
}