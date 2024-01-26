import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'aufgabe2classjson.dart';

Future<List<User>> getJason() async {
  final pref = await SharedPreferences.getInstance();

  final String jsonString = pref.getString("json") ?? "";
  final jsonList = json.decode(jsonString) as List<dynamic>;
  final List<User> users = jsonList.map((json) => User.fromJSON(json)).toList();
  return users;
}

Future<void> writeJasonToSharedPreferences(List<User> users) async {
  List<dynamic> jsonList = users.map((user) => user.toJSON()).toList();
  final pref = await SharedPreferences.getInstance();
  final String jsonString = jsonEncode(jsonList);
  pref.setString('json', jsonString);
}


///[return] -> List<User> 
///[data] -> Shared Prefs