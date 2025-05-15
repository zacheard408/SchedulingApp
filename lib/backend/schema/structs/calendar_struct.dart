// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarStruct extends BaseStruct {
  CalendarStruct({
    List<EventStruct>? events,
    String? title,
    String? description,
    bool? isAdmin,
  })  : _events = events,
        _title = title,
        _description = description,
        _isAdmin = isAdmin;

  // "events" field.
  List<EventStruct>? _events;
  List<EventStruct> get events => _events ?? const [];
  set events(List<EventStruct>? val) => _events = val;

  void updateEvents(Function(List<EventStruct>) updateFn) {
    updateFn(_events ??= []);
  }

  bool hasEvents() => _events != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  set isAdmin(bool? val) => _isAdmin = val;

  bool hasIsAdmin() => _isAdmin != null;

  static CalendarStruct fromMap(Map<String, dynamic> data) => CalendarStruct(
        events: getStructList(
          data['events'],
          EventStruct.fromMap,
        ),
        title: data['title'] as String?,
        description: data['description'] as String?,
        isAdmin: data['isAdmin'] as bool?,
      );

  static CalendarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CalendarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'events': _events?.map((e) => e.toMap()).toList(),
        'title': _title,
        'description': _description,
        'isAdmin': _isAdmin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'events': serializeParam(
          _events,
          ParamType.DataStruct,
          isList: true,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'isAdmin': serializeParam(
          _isAdmin,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CalendarStruct fromSerializableMap(Map<String, dynamic> data) =>
      CalendarStruct(
        events: deserializeStructParam<EventStruct>(
          data['events'],
          ParamType.DataStruct,
          true,
          structBuilder: EventStruct.fromSerializableMap,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isAdmin: deserializeParam(
          data['isAdmin'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CalendarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CalendarStruct &&
        listEquality.equals(events, other.events) &&
        title == other.title &&
        description == other.description &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([events, title, description, isAdmin]);
}

CalendarStruct createCalendarStruct({
  String? title,
  String? description,
  bool? isAdmin,
}) =>
    CalendarStruct(
      title: title,
      description: description,
      isAdmin: isAdmin,
    );
