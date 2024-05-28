import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference{

  AppSharedPreference._();

  Future read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString(key);

    return value != null ? json.decode(value) : null;
  }

  Future<void> save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(key, json.encode(value));
  }

  Future<bool> containsKey(String key) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.containsKey(key);
  }

  Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.remove(key);
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.clear();
  }

}
