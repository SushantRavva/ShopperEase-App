import 'package:flutter/material.dart';
import 'backend/backend.dart';
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
    _swipableListIndex =
        prefs.getInt('ff_swipableListIndex') ?? _swipableListIndex;
    _recentsearches =
        prefs.getStringList('ff_recentsearches') ?? _recentsearches;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _timerRunning = false;
  bool get timerRunning => _timerRunning;
  set timerRunning(bool _value) {
    _timerRunning = _value;
  }

  int _swipableListIndex = 0;
  int get swipableListIndex => _swipableListIndex;
  set swipableListIndex(int _value) {
    _swipableListIndex = _value;
    prefs.setInt('ff_swipableListIndex', _value);
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool _value) {
    _searchActive2 = _value;
  }

  List<String> _recentsearches = [];
  List<String> get recentsearches => _recentsearches;
  set recentsearches(List<String> _value) {
    _recentsearches = _value;
    prefs.setStringList('ff_recentsearches', _value);
  }

  void addToRecentsearches(String _value) {
    _recentsearches.add(_value);
    prefs.setStringList('ff_recentsearches', _recentsearches);
  }

  void removeFromRecentsearches(String _value) {
    _recentsearches.remove(_value);
    prefs.setStringList('ff_recentsearches', _recentsearches);
  }

  void removeAtIndexFromRecentsearches(int _index) {
    _recentsearches.removeAt(_index);
    prefs.setStringList('ff_recentsearches', _recentsearches);
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
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
