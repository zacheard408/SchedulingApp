// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarStruct extends FFFirebaseStruct {
  CalendarStruct({
    List<EventStruct>? events,
    String? title,
    String? description,
    DocumentReference? calendarReference,
    bool? shareable,
    Color? color,
    bool? isAdmin,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _events = events,
        _title = title,
        _description = description,
        _calendarReference = calendarReference,
        _shareable = shareable,
        _color = color,
        _isAdmin = isAdmin,
        super(firestoreUtilData);

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

  // "calendarReference" field.
  DocumentReference? _calendarReference;
  DocumentReference? get calendarReference => _calendarReference;
  set calendarReference(DocumentReference? val) => _calendarReference = val;

  bool hasCalendarReference() => _calendarReference != null;

  // "shareable" field.
  bool? _shareable;
  bool get shareable => _shareable ?? false;
  set shareable(bool? val) => _shareable = val;

  bool hasShareable() => _shareable != null;

  // "color" field.
  Color? _color;
  Color get color => _color ?? const Color(0xFF5800ED);
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

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
        calendarReference: data['calendarReference'] as DocumentReference?,
        shareable: data['shareable'] as bool?,
        color: getSchemaColor(data['color']),
        isAdmin: data['isAdmin'] as bool?,
      );

  static CalendarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CalendarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'events': _events?.map((e) => e.toMap()).toList(),
        'title': _title,
        'description': _description,
        'calendarReference': _calendarReference,
        'shareable': _shareable,
        'color': _color,
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
        'calendarReference': serializeParam(
          _calendarReference,
          ParamType.DocumentReference,
        ),
        'shareable': serializeParam(
          _shareable,
          ParamType.bool,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
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
        calendarReference: deserializeParam(
          data['calendarReference'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['calendars'],
        ),
        shareable: deserializeParam(
          data['shareable'],
          ParamType.bool,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
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
        calendarReference == other.calendarReference &&
        shareable == other.shareable &&
        color == other.color &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        events,
        title,
        description,
        calendarReference,
        shareable,
        color,
        isAdmin
      ]);
}

CalendarStruct createCalendarStruct({
  String? title,
  String? description,
  DocumentReference? calendarReference,
  bool? shareable,
  Color? color,
  bool? isAdmin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CalendarStruct(
      title: title,
      description: description,
      calendarReference: calendarReference,
      shareable: shareable,
      color: color,
      isAdmin: isAdmin,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CalendarStruct? updateCalendarStruct(
  CalendarStruct? calendar, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    calendar
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCalendarStructData(
  Map<String, dynamic> firestoreData,
  CalendarStruct? calendar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (calendar == null) {
    return;
  }
  if (calendar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && calendar.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final calendarData = getCalendarFirestoreData(calendar, forFieldValue);
  final nestedData = calendarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = calendar.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCalendarFirestoreData(
  CalendarStruct? calendar, [
  bool forFieldValue = false,
]) {
  if (calendar == null) {
    return {};
  }
  final firestoreData = mapToFirestore(calendar.toMap());

  // Add any Firestore field values
  calendar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCalendarListFirestoreData(
  List<CalendarStruct>? calendars,
) =>
    calendars?.map((e) => getCalendarFirestoreData(e, true)).toList() ?? [];
