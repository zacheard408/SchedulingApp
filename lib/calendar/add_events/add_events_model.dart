import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/calendar/event_block/event_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_events_widget.dart' show AddEventsWidget;
import 'package:flutter/material.dart';

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

  // Model for eventBlock component.
  late EventBlockModel eventBlockModel;

  @override
  void initState(BuildContext context) {
    eventBlockModel = createModel(context, () => EventBlockModel());
  }

  @override
  void dispose() {
    eventBlockModel.dispose();
  }
}
