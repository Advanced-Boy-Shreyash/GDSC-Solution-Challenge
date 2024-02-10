import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LatlonRecord extends FirestoreRecord {
  LatlonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "latlon" field.
  LatLng? _latlon;
  LatLng? get latlon => _latlon;
  bool hasLatlon() => _latlon != null;

  void _initializeFields() {
    _latlon = snapshotData['latlon'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('latlon');

  static Stream<LatlonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LatlonRecord.fromSnapshot(s));

  static Future<LatlonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LatlonRecord.fromSnapshot(s));

  static LatlonRecord fromSnapshot(DocumentSnapshot snapshot) => LatlonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LatlonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LatlonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LatlonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LatlonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLatlonRecordData({
  LatLng? latlon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'latlon': latlon,
    }.withoutNulls,
  );

  return firestoreData;
}

class LatlonRecordDocumentEquality implements Equality<LatlonRecord> {
  const LatlonRecordDocumentEquality();

  @override
  bool equals(LatlonRecord? e1, LatlonRecord? e2) {
    return e1?.latlon == e2?.latlon;
  }

  @override
  int hash(LatlonRecord? e) => const ListEquality().hash([e?.latlon]);

  @override
  bool isValidKey(Object? o) => o is LatlonRecord;
}
