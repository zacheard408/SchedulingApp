import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarsRecord extends FirestoreRecord {
  CalendarsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "events" field.
  List<EventStruct>? _events;
  List<EventStruct> get events => _events ?? const [];
  bool hasEvents() => _events != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "admins" field.
  List<DocumentReference>? _admins;
  List<DocumentReference> get admins => _admins ?? const [];
  bool hasAdmins() => _admins != null;

  void _initializeFields() {
    _events = getStructList(
      snapshotData['events'],
      EventStruct.fromMap,
    );
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _users = getDataList(snapshotData['users']);
    _admins = getDataList(snapshotData['admins']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calendars');

  static Stream<CalendarsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalendarsRecord.fromSnapshot(s));

  static Future<CalendarsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalendarsRecord.fromSnapshot(s));

  static CalendarsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalendarsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalendarsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalendarsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalendarsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalendarsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalendarsRecordData({
  String? title,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalendarsRecordDocumentEquality implements Equality<CalendarsRecord> {
  const CalendarsRecordDocumentEquality();

  @override
  bool equals(CalendarsRecord? e1, CalendarsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.events, e2?.events) &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.users, e2?.users) &&
        listEquality.equals(e1?.admins, e2?.admins);
  }

  @override
  int hash(CalendarsRecord? e) => const ListEquality()
      .hash([e?.events, e?.title, e?.description, e?.users, e?.admins]);

  @override
  bool isValidKey(Object? o) => o is CalendarsRecord;
}
