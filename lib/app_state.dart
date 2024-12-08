import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _calendars = prefs
              .getStringList('ff_calendars')
              ?.map((x) {
                try {
                  return CalendarStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _calendars;
    });
    _safeInit(() {
      _emailForPasswordChange = prefs.getString('ff_emailForPasswordChange') ??
          _emailForPasswordChange;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CalendarStruct> _calendars = [];
  List<CalendarStruct> get calendars => _calendars;
  set calendars(List<CalendarStruct> value) {
    _calendars = value;
    prefs.setStringList(
        'ff_calendars', value.map((x) => x.serialize()).toList());
  }

  void addToCalendars(CalendarStruct value) {
    calendars.add(value);
    prefs.setStringList(
        'ff_calendars', _calendars.map((x) => x.serialize()).toList());
  }

  void removeFromCalendars(CalendarStruct value) {
    calendars.remove(value);
    prefs.setStringList(
        'ff_calendars', _calendars.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCalendars(int index) {
    calendars.removeAt(index);
    prefs.setStringList(
        'ff_calendars', _calendars.map((x) => x.serialize()).toList());
  }

  void updateCalendarsAtIndex(
    int index,
    CalendarStruct Function(CalendarStruct) updateFn,
  ) {
    calendars[index] = updateFn(_calendars[index]);
    prefs.setStringList(
        'ff_calendars', _calendars.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCalendars(int index, CalendarStruct value) {
    calendars.insert(index, value);
    prefs.setStringList(
        'ff_calendars', _calendars.map((x) => x.serialize()).toList());
  }

  String _emailForPasswordChange = '';
  String get emailForPasswordChange => _emailForPasswordChange;
  set emailForPasswordChange(String value) {
    _emailForPasswordChange = value;
    prefs.setString('ff_emailForPasswordChange', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
