// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class WeekStruct extends FFFirebaseStruct {
  WeekStruct({
    bool? sunday,
    bool? monday,
    bool? tuesday,
    bool? wednesday,
    bool? thursday,
    bool? friday,
    bool? saturday,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sunday = sunday,
        _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        super(firestoreUtilData);

  // "sunday" field.
  bool? _sunday;
  bool get sunday => _sunday ?? false;
  set sunday(bool? val) => _sunday = val;

  bool hasSunday() => _sunday != null;

  // "monday" field.
  bool? _monday;
  bool get monday => _monday ?? false;
  set monday(bool? val) => _monday = val;

  bool hasMonday() => _monday != null;

  // "tuesday" field.
  bool? _tuesday;
  bool get tuesday => _tuesday ?? false;
  set tuesday(bool? val) => _tuesday = val;

  bool hasTuesday() => _tuesday != null;

  // "wednesday" field.
  bool? _wednesday;
  bool get wednesday => _wednesday ?? false;
  set wednesday(bool? val) => _wednesday = val;

  bool hasWednesday() => _wednesday != null;

  // "thursday" field.
  bool? _thursday;
  bool get thursday => _thursday ?? false;
  set thursday(bool? val) => _thursday = val;

  bool hasThursday() => _thursday != null;

  // "friday" field.
  bool? _friday;
  bool get friday => _friday ?? false;
  set friday(bool? val) => _friday = val;

  bool hasFriday() => _friday != null;

  // "saturday" field.
  bool? _saturday;
  bool get saturday => _saturday ?? false;
  set saturday(bool? val) => _saturday = val;

  bool hasSaturday() => _saturday != null;

  static WeekStruct fromMap(Map<String, dynamic> data) => WeekStruct(
        sunday: data['sunday'] as bool?,
        monday: data['monday'] as bool?,
        tuesday: data['tuesday'] as bool?,
        wednesday: data['wednesday'] as bool?,
        thursday: data['thursday'] as bool?,
        friday: data['friday'] as bool?,
        saturday: data['saturday'] as bool?,
      );

  static WeekStruct? maybeFromMap(dynamic data) =>
      data is Map ? WeekStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sunday': _sunday,
        'monday': _monday,
        'tuesday': _tuesday,
        'wednesday': _wednesday,
        'thursday': _thursday,
        'friday': _friday,
        'saturday': _saturday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sunday': serializeParam(
          _sunday,
          ParamType.bool,
        ),
        'monday': serializeParam(
          _monday,
          ParamType.bool,
        ),
        'tuesday': serializeParam(
          _tuesday,
          ParamType.bool,
        ),
        'wednesday': serializeParam(
          _wednesday,
          ParamType.bool,
        ),
        'thursday': serializeParam(
          _thursday,
          ParamType.bool,
        ),
        'friday': serializeParam(
          _friday,
          ParamType.bool,
        ),
        'saturday': serializeParam(
          _saturday,
          ParamType.bool,
        ),
      }.withoutNulls;

  static WeekStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeekStruct(
        sunday: deserializeParam(
          data['sunday'],
          ParamType.bool,
          false,
        ),
        monday: deserializeParam(
          data['monday'],
          ParamType.bool,
          false,
        ),
        tuesday: deserializeParam(
          data['tuesday'],
          ParamType.bool,
          false,
        ),
        wednesday: deserializeParam(
          data['wednesday'],
          ParamType.bool,
          false,
        ),
        thursday: deserializeParam(
          data['thursday'],
          ParamType.bool,
          false,
        ),
        friday: deserializeParam(
          data['friday'],
          ParamType.bool,
          false,
        ),
        saturday: deserializeParam(
          data['saturday'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'WeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeekStruct &&
        sunday == other.sunday &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([sunday, monday, tuesday, wednesday, thursday, friday, saturday]);
}

WeekStruct createWeekStruct({
  bool? sunday,
  bool? monday,
  bool? tuesday,
  bool? wednesday,
  bool? thursday,
  bool? friday,
  bool? saturday,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WeekStruct(
      sunday: sunday,
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WeekStruct? updateWeekStruct(
  WeekStruct? week, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    week
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWeekStructData(
  Map<String, dynamic> firestoreData,
  WeekStruct? week,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (week == null) {
    return;
  }
  if (week.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && week.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final weekData = getWeekFirestoreData(week, forFieldValue);
  final nestedData = weekData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = week.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWeekFirestoreData(
  WeekStruct? week, [
  bool forFieldValue = false,
]) {
  if (week == null) {
    return {};
  }
  final firestoreData = mapToFirestore(week.toMap());

  // Add any Firestore field values
  week.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWeekListFirestoreData(
  List<WeekStruct>? weeks,
) =>
    weeks?.map((e) => getWeekFirestoreData(e, true)).toList() ?? [];
