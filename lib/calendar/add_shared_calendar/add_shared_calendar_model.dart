import '/flutter_flow/flutter_flow_util.dart';
import 'add_shared_calendar_widget.dart' show AddSharedCalendarWidget;
import 'package:flutter/material.dart';

class AddSharedCalendarModel extends FlutterFlowModel<AddSharedCalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
