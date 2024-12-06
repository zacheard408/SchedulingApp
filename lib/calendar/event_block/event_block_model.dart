import '/calendar/week_block/week_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_block_widget.dart' show EventBlockWidget;
import 'package:flutter/material.dart';

class EventBlockModel extends FlutterFlowModel<EventBlockWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for weekBlock component.
  late WeekBlockModel weekBlockModel;
  DateTime? datePicked4;
  DateTime? datePicked5;
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
