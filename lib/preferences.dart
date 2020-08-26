import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  SharedPreferences _prefs;
  bool get isReady => _prefs != null;
  final _controller = StreamController<Preferences>.broadcast();
  Stream<Preferences> get stream => _controller.stream;

  void dispose() {
    _controller?.close();
  }

  Future<bool> init() async {
    _controller.add(this);
    _prefs = await SharedPreferences.getInstance();
    _controller.add(this);
    return isReady;
  }

  static const String _isFreshKey = 'is_Fresh';
  bool get isFresh => _prefs?.getBool(_isFreshKey) ?? true;
  set isFresh(bool value) => updateIsFresh(value);
  Future updateIsFresh(bool value) async {
    if (!isReady) await init();
    await _prefs.setBool((_isFreshKey), value);
    _controller.add(this);
  }

  static const String _isLoggedKey = 'is_logged';
  bool get isLogged => _prefs?.getBool(_isLoggedKey) ?? false;
  set isLogged(bool value) => updateIsLogged(value);
  Future updateIsLogged(bool value) async {
    if (!isReady) await init();
    await _prefs.setBool(_isLoggedKey, value);
    _controller.add(this);
  }

  static const String _isFargDoneKey = 'is_Farg_Done';
  bool get isFargDone => _prefs?.getBool(_isFargDoneKey) ?? false;
  set isFargDone(bool value) => updateIsFargDone(value);
  Future updateIsFargDone(bool value) async {
    if (!isReady) await init();
    await _prefs.setBool(_isFargDoneKey, value);
    _controller.add(this);
  }

  static const String _isSerialInKey = 'is_serial_In';
  bool get isSerialIn => _prefs?.getBool(_isSerialInKey) ?? false;
  set isSerialIn(bool value) => updateIsSerialIn(value);
  Future updateIsSerialIn(bool value) async {
    if (!isReady) await init();
    await _prefs.setBool(_isSerialInKey, value);
    _controller.add(this);
  }
}
