// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeekStruct extends BaseStruct {
  WeekStruct({
    bool? monday,
    bool? tuesday,
    bool? wednesday,
    bool? thursday,
    bool? friday,
    bool? saturday,
    bool? sunday,
  })  : _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        _sunday = sunday;

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

  // "sunday" field.
  bool? _sunday;
  bool get sunday => _sunday ?? false;
  set sunday(bool? val) => _sunday = val;

  bool hasSunday() => _sunday != null;

  static WeekStruct fromMap(Map<String, dynamic> data) => WeekStruct(
        monday: data['monday'] as bool?,
        tuesday: data['tuesday'] as bool?,
        wednesday: data['wednesday'] as bool?,
        thursday: data['thursday'] as bool?,
        friday: data['friday'] as bool?,
        saturday: data['saturday'] as bool?,
        sunday: data['sunday'] as bool?,
      );

  static WeekStruct? maybeFromMap(dynamic data) =>
      data is Map ? WeekStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'monday': _monday,
        'tuesday': _tuesday,
        'wednesday': _wednesday,
        'thursday': _thursday,
        'friday': _friday,
        'saturday': _saturday,
        'sunday': _sunday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'sunday': serializeParam(
          _sunday,
          ParamType.bool,
        ),
      }.withoutNulls;

  static WeekStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeekStruct(
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
        sunday: deserializeParam(
          data['sunday'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'WeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeekStruct &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([monday, tuesday, wednesday, thursday, friday, saturday, sunday]);
}

WeekStruct createWeekStruct({
  bool? monday,
  bool? tuesday,
  bool? wednesday,
  bool? thursday,
  bool? friday,
  bool? saturday,
  bool? sunday,
}) =>
    WeekStruct(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
    );
