import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _IneImage = '';
  String get IneImage => _IneImage;
  set IneImage(String _value) {
    _IneImage = _value;
  }

  String _Licencia = '';
  String get Licencia => _Licencia;
  set Licencia(String _value) {
    _Licencia = _value;
  }

  String _CardName = '';
  String get CardName => _CardName;
  set CardName(String _value) {
    _CardName = _value;
  }

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String _value) {
    _cardNumber = _value;
  }

  String _cardExpirationDate = '';
  String get cardExpirationDate => _cardExpirationDate;
  set cardExpirationDate(String _value) {
    _cardExpirationDate = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
