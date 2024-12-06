import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? testPassword(String? password) {
  // return true if password is at least 8 characters long and contains a symbol and a capital letter
  if (password == null) {
    return false;
  }
  if (password.length < 8) {
    return false;
  }
  if (!password.contains(RegExp(r'[A-Z]'))) {
    return false;
  }
  if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return false;
  }
  return true;
}

List<EventStruct>? getEventsFromCalendars(
  List<CalendarStruct>? calendars,
  DateTime? date,
) {
  // iterate through events in calendars and return events when startDate of event is equal to date
  List<EventStruct>? events = [];

  if (calendars != null && date != null) {
    for (CalendarStruct calendar in calendars) {
      for (EventStruct event in calendar.events) {
        if (event.startTime == date) {
          events.add(event);
        }
      }
    }
  }

  return events;
}

String? getSenderNameFromDoc(UsersRecord? user) {
  // return display_name from the user document
  if (user != null) {
    return user.displayName;
  } else {
    return null;
  }
}

List<CalendarStruct>? updateLocalCalendars(List<CalendarStruct>? calendars) {
  // for each calendar in calendars, if calendar.shareable is true, use calendarReference (a reference to the calendar collection) to update events, title, and description in the calendar argument
  if (calendars != null) {
    for (var calendar in calendars) {
      if (calendar.shareable) {
        calendar.calendarReference?.update({
          'events': calendar.events,
          'title': calendar.title,
          'description': calendar.description,
        });
      }
    }
  }
  return calendars;
}
