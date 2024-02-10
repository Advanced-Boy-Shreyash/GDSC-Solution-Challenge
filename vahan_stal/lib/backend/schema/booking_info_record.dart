import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingInfoRecord extends FirestoreRecord {
  BookingInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vehicleNo" field.
  String? _vehicleNo;
  String get vehicleNo => _vehicleNo ?? '';
  bool hasVehicleNo() => _vehicleNo != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "bookingTime" field.
  DateTime? _bookingTime;
  DateTime? get bookingTime => _bookingTime;
  bool hasBookingTime() => _bookingTime != null;

  // "bookingHours" field.
  double? _bookingHours;
  double get bookingHours => _bookingHours ?? 0.0;
  bool hasBookingHours() => _bookingHours != null;

  // "transactionValue" field.
  double? _transactionValue;
  double get transactionValue => _transactionValue ?? 0.0;
  bool hasTransactionValue() => _transactionValue != null;

  // "transcationTime" field.
  DateTime? _transcationTime;
  DateTime? get transcationTime => _transcationTime;
  bool hasTranscationTime() => _transcationTime != null;

  void _initializeFields() {
    _vehicleNo = snapshotData['vehicleNo'] as String?;
    _owner = snapshotData['owner'] as String?;
    _bookingTime = snapshotData['bookingTime'] as DateTime?;
    _bookingHours = castToType<double>(snapshotData['bookingHours']);
    _transactionValue = castToType<double>(snapshotData['transactionValue']);
    _transcationTime = snapshotData['transcationTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookingInfo');

  static Stream<BookingInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingInfoRecord.fromSnapshot(s));

  static Future<BookingInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingInfoRecord.fromSnapshot(s));

  static BookingInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingInfoRecordData({
  String? vehicleNo,
  String? owner,
  DateTime? bookingTime,
  double? bookingHours,
  double? transactionValue,
  DateTime? transcationTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vehicleNo': vehicleNo,
      'owner': owner,
      'bookingTime': bookingTime,
      'bookingHours': bookingHours,
      'transactionValue': transactionValue,
      'transcationTime': transcationTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingInfoRecordDocumentEquality implements Equality<BookingInfoRecord> {
  const BookingInfoRecordDocumentEquality();

  @override
  bool equals(BookingInfoRecord? e1, BookingInfoRecord? e2) {
    return e1?.vehicleNo == e2?.vehicleNo &&
        e1?.owner == e2?.owner &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.bookingHours == e2?.bookingHours &&
        e1?.transactionValue == e2?.transactionValue &&
        e1?.transcationTime == e2?.transcationTime;
  }

  @override
  int hash(BookingInfoRecord? e) => const ListEquality().hash([
        e?.vehicleNo,
        e?.owner,
        e?.bookingTime,
        e?.bookingHours,
        e?.transactionValue,
        e?.transcationTime
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingInfoRecord;
}
