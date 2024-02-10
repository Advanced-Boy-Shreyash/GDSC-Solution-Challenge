import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParkingSlotsRecord extends FirestoreRecord {
  ParkingSlotsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "parkingSlots" field.
  String? _parkingSlots;
  String get parkingSlots => _parkingSlots ?? '';
  bool hasParkingSlots() => _parkingSlots != null;

  // "parkingLots" field.
  List<String>? _parkingLots;
  List<String> get parkingLots => _parkingLots ?? const [];
  bool hasParkingLots() => _parkingLots != null;

  // "isBooked" field.
  List<bool>? _isBooked;
  List<bool> get isBooked => _isBooked ?? const [];
  bool hasIsBooked() => _isBooked != null;

  void _initializeFields() {
    _parkingSlots = snapshotData['parkingSlots'] as String?;
    _parkingLots = getDataList(snapshotData['parkingLots']);
    _isBooked = getDataList(snapshotData['isBooked']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parkingSlots');

  static Stream<ParkingSlotsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParkingSlotsRecord.fromSnapshot(s));

  static Future<ParkingSlotsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParkingSlotsRecord.fromSnapshot(s));

  static ParkingSlotsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParkingSlotsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParkingSlotsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParkingSlotsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParkingSlotsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParkingSlotsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParkingSlotsRecordData({
  String? parkingSlots,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'parkingSlots': parkingSlots,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParkingSlotsRecordDocumentEquality
    implements Equality<ParkingSlotsRecord> {
  const ParkingSlotsRecordDocumentEquality();

  @override
  bool equals(ParkingSlotsRecord? e1, ParkingSlotsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.parkingSlots == e2?.parkingSlots &&
        listEquality.equals(e1?.parkingLots, e2?.parkingLots) &&
        listEquality.equals(e1?.isBooked, e2?.isBooked);
  }

  @override
  int hash(ParkingSlotsRecord? e) =>
      const ListEquality().hash([e?.parkingSlots, e?.parkingLots, e?.isBooked]);

  @override
  bool isValidKey(Object? o) => o is ParkingSlotsRecord;
}
