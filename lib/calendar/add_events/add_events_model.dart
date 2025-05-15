import '/backend/schema/structs/index.dart';
import '/calendar/week_block/week_block_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'add_events_widget.dart' show AddEventsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddEventsModel extends FlutterFlowModel<AddEventsWidget> {
  ///  Local state fields for this page.

  EventStruct? event;
  void updateEventStruct(Function(EventStruct) updateFn) {
    updateFn(event ??= EventStruct());
  }

  CalendarStruct? calendar;
  void updateCalendarStruct(Function(CalendarStruct) updateFn) {
    updateFn(calendar ??= CalendarStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for weekBlock component.
  late WeekBlockModel weekBlockModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    weekBlockModel = createModel(context, () => WeekBlockModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    weekBlockModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
