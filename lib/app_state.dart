import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CalendarStruct> _calendars = [];
  List<CalendarStruct> get calendars => _calendars;
  set calendars(List<CalendarStruct> value) {
    _calendars = value;
  }

  void addToCalendars(CalendarStruct value) {
    calendars.add(value);
  }

  void removeFromCalendars(CalendarStruct value) {
    calendars.remove(value);
  }

  void removeAtIndexFromCalendars(int index) {
    calendars.removeAt(index);
  }

  void updateCalendarsAtIndex(
    int index,
    CalendarStruct Function(CalendarStruct) updateFn,
  ) {
    calendars[index] = updateFn(_calendars[index]);
  }

  void insertAtIndexInCalendars(int index, CalendarStruct value) {
    calendars.insert(index, value);
  }
}
