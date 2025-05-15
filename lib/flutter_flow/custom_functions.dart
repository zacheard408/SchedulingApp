import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool? testPassword(
  String? password,
  String? confirmPassword,
) {
  // return true if password is at least 8 characters long and contains a symbol and a capital letter
  if (password == null || confirmPassword == null) {
    return false;
  }
  if (password.length < 8) {
    return false;
  }
  if (password != confirmPassword) {
    return false;
  }
  if (!password.contains(RegExp(r'[A-Z]'))) {
    return false;
  }
  if (!password.contains(RegExp(r'[0-9]'))) {
    return false;
  }
  if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return false;
  }
  return true;
}

List<EventStruct>? getValidEvents(
  DateTime selectedDate,
  List<CalendarStruct>? calendars,
) {
  // use the checkWeek function, to check if each event in each calendar is between "start" and "end" of the event
  if (calendars == null) return null;

  List<EventStruct> validEvents = [];

  for (var calendar in calendars) {
    for (var event in calendar.events) {
      if ((selectedDate.day == event.start.day &&
              selectedDate.month == event.start.month &&
              selectedDate.year == event.start.year) ||
          (selectedDate.day == event.end.day &&
              selectedDate.month == event.end.month &&
              selectedDate.year == event.end.year) ||
          checkWeek(event.week, selectedDate)) {
        validEvents.add(event);
      }
    }
  }

  return validEvents.isNotEmpty ? validEvents : null;
}

bool checkWeek(
  WeekStruct week,
  DateTime date,
) {
  if (date.weekday == 1 && week.monday) return true;
  if (date.weekday == 2 && week.tuesday) return true;
  if (date.weekday == 3 && week.wednesday) return true;
  if (date.weekday == 4 && week.thursday) return true;
  if (date.weekday == 5 && week.friday) return true;
  if (date.weekday == 6 && week.saturday) return true;
  if (date.weekday == 7 && week.sunday) return true;
  return false;
}

bool checkDay(
  DateTime end,
  DateTime start,
  DateTime date,
) {
  // check if the day of date is between start and end inclusive
  return date.isAfter(start.subtract(Duration(days: 1))) &&
      date.isBefore(end.add(Duration(days: 1)));
}
