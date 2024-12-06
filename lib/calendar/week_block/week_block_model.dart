import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'week_block_widget.dart' show WeekBlockWidget;
import 'package:flutter/material.dart';

class WeekBlockModel extends FlutterFlowModel<WeekBlockWidget> {
  ///  Local state fields for this component.

  WeekStruct? week;
  void updateWeekStruct(Function(WeekStruct) updateFn) {
    updateFn(week ??= WeekStruct());
  }

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
