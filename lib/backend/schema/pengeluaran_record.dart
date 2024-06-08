import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PengeluaranRecord extends FirestoreRecord {
  PengeluaranRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nama" field.
  List<String>? _nama;
  List<String> get nama => _nama ?? const [];
  bool hasNama() => _nama != null;

  // "tanggal" field.
  List<DateTime>? _tanggal;
  List<DateTime> get tanggal => _tanggal ?? const [];
  bool hasTanggal() => _tanggal != null;

  // "dek" field.
  int? _dek;
  int get dek => _dek ?? 0;
  bool hasDek() => _dek != null;

  // "totaluangkeluar" field.
  double? _totaluangkeluar;
  double get totaluangkeluar => _totaluangkeluar ?? 0.0;
  bool hasTotaluangkeluar() => _totaluangkeluar != null;

  // "listuangkeluar" field.
  List<double>? _listuangkeluar;
  List<double> get listuangkeluar => _listuangkeluar ?? const [];
  bool hasListuangkeluar() => _listuangkeluar != null;

  void _initializeFields() {
    _nama = getDataList(snapshotData['nama']);
    _tanggal = getDataList(snapshotData['tanggal']);
    _dek = castToType<int>(snapshotData['dek']);
    _totaluangkeluar = castToType<double>(snapshotData['totaluangkeluar']);
    _listuangkeluar = getDataList(snapshotData['listuangkeluar']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pengeluaran');

  static Stream<PengeluaranRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PengeluaranRecord.fromSnapshot(s));

  static Future<PengeluaranRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PengeluaranRecord.fromSnapshot(s));

  static PengeluaranRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PengeluaranRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PengeluaranRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PengeluaranRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PengeluaranRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PengeluaranRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPengeluaranRecordData({
  int? dek,
  double? totaluangkeluar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dek': dek,
      'totaluangkeluar': totaluangkeluar,
    }.withoutNulls,
  );

  return firestoreData;
}

class PengeluaranRecordDocumentEquality implements Equality<PengeluaranRecord> {
  const PengeluaranRecordDocumentEquality();

  @override
  bool equals(PengeluaranRecord? e1, PengeluaranRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.nama, e2?.nama) &&
        listEquality.equals(e1?.tanggal, e2?.tanggal) &&
        e1?.dek == e2?.dek &&
        e1?.totaluangkeluar == e2?.totaluangkeluar &&
        listEquality.equals(e1?.listuangkeluar, e2?.listuangkeluar);
  }

  @override
  int hash(PengeluaranRecord? e) => const ListEquality().hash(
      [e?.nama, e?.tanggal, e?.dek, e?.totaluangkeluar, e?.listuangkeluar]);

  @override
  bool isValidKey(Object? o) => o is PengeluaranRecord;
}
