// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends BaseStruct {
  EventStruct({
    DateTime? start,
    DateTime? end,
    String? title,
    String? description,
    List<String>? usersAssigned,
    WeekStruct? week,
  })  : _start = start,
        _end = end,
        _title = title,
        _description = description,
        _usersAssigned = usersAssigned,
        _week = week;

  // "start" field.
  DateTime? _start;
  DateTime get start =>
      _start ?? DateTime.fromMicrosecondsSinceEpoch(1747285200000000);
  set start(DateTime? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  DateTime? _end;
  DateTime get end =>
      _end ?? DateTime.fromMicrosecondsSinceEpoch(1747285200000000);
  set end(DateTime? val) => _end = val;

  bool hasEnd() => _end != null;

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

  // "usersAssigned" field.
  List<String>? _usersAssigned;
  List<String> get usersAssigned => _usersAssigned ?? const [];
  set usersAssigned(List<String>? val) => _usersAssigned = val;

  void updateUsersAssigned(Function(List<String>) updateFn) {
    updateFn(_usersAssigned ??= []);
  }

  bool hasUsersAssigned() => _usersAssigned != null;

  // "week" field.
  WeekStruct? _week;
  WeekStruct get week => _week ?? WeekStruct();
  set week(WeekStruct? val) => _week = val;

  void updateWeek(Function(WeekStruct) updateFn) {
    updateFn(_week ??= WeekStruct());
  }

  bool hasWeek() => _week != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        start: data['start'] as DateTime?,
        end: data['end'] as DateTime?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        usersAssigned: getDataList(data['usersAssigned']),
        week: data['week'] is WeekStruct
            ? data['week']
            : WeekStruct.maybeFromMap(data['week']),
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'start': _start,
        'end': _end,
        'title': _title,
        'description': _description,
        'usersAssigned': _usersAssigned,
        'week': _week?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start': serializeParam(
          _start,
          ParamType.DateTime,
        ),
        'end': serializeParam(
          _end,
          ParamType.DateTime,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'usersAssigned': serializeParam(
          _usersAssigned,
          ParamType.String,
          isList: true,
        ),
        'week': serializeParam(
          _week,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        start: deserializeParam(
          data['start'],
          ParamType.DateTime,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.DateTime,
          false,
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
        usersAssigned: deserializeParam<String>(
          data['usersAssigned'],
          ParamType.String,
          true,
        ),
        week: deserializeStructParam(
          data['week'],
          ParamType.DataStruct,
          false,
          structBuilder: WeekStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventStruct &&
        start == other.start &&
        end == other.end &&
        title == other.title &&
        description == other.description &&
        listEquality.equals(usersAssigned, other.usersAssigned) &&
        week == other.week;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([start, end, title, description, usersAssigned, week]);
}

EventStruct createEventStruct({
  DateTime? start,
  DateTime? end,
  String? title,
  String? description,
  WeekStruct? week,
}) =>
    EventStruct(
      start: start,
      end: end,
      title: title,
      description: description,
      week: week ?? WeekStruct(),
    );
