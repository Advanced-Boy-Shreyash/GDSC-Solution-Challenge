import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocateParkingRecord extends FirestoreRecord {
  LocateParkingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "parkingStations" field.
  String? _parkingStations;
  String get parkingStations => _parkingStations ?? '';
  bool hasParkingStations() => _parkingStations != null;

  // "locations" field.
  LatLng? _locations;
  LatLng? get locations => _locations;
  bool hasLocations() => _locations != null;

  void _initializeFields() {
    _parkingStations = snapshotData['parkingStations'] as String?;
    _locations = snapshotData['locations'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locateParking');

  static Stream<LocateParkingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocateParkingRecord.fromSnapshot(s));

  static Future<LocateParkingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocateParkingRecord.fromSnapshot(s));

  static LocateParkingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocateParkingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocateParkingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocateParkingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocateParkingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocateParkingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocateParkingRecordData({
  String? parkingStations,
  LatLng? locations,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'parkingStations': parkingStations,
      'locations': locations,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocateParkingRecordDocumentEquality
    implements Equality<LocateParkingRecord> {
  const LocateParkingRecordDocumentEquality();

  @override
  bool equals(LocateParkingRecord? e1, LocateParkingRecord? e2) {
    return e1?.parkingStations == e2?.parkingStations &&
        e1?.locations == e2?.locations;
  }

  @override
  int hash(LocateParkingRecord? e) =>
      const ListEquality().hash([e?.parkingStations, e?.locations]);

  @override
  bool isValidKey(Object? o) => o is LocateParkingRecord;
}
