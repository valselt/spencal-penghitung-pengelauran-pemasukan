import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PemasukanRecord extends FirestoreRecord {
  PemasukanRecord._(
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

  // "totaluangmasuk" field.
  double? _totaluangmasuk;
  double get totaluangmasuk => _totaluangmasuk ?? 0.0;
  bool hasTotaluangmasuk() => _totaluangmasuk != null;

  // "listuangmasuk" field.
  List<double>? _listuangmasuk;
  List<double> get listuangmasuk => _listuangmasuk ?? const [];
  bool hasListuangmasuk() => _listuangmasuk != null;

  void _initializeFields() {
    _nama = getDataList(snapshotData['nama']);
    _tanggal = getDataList(snapshotData['tanggal']);
    _dek = castToType<int>(snapshotData['dek']);
    _totaluangmasuk = castToType<double>(snapshotData['totaluangmasuk']);
    _listuangmasuk = getDataList(snapshotData['listuangmasuk']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pemasukan');

  static Stream<PemasukanRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PemasukanRecord.fromSnapshot(s));

  static Future<PemasukanRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PemasukanRecord.fromSnapshot(s));

  static PemasukanRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PemasukanRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PemasukanRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PemasukanRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PemasukanRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PemasukanRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPemasukanRecordData({
  int? dek,
  double? totaluangmasuk,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dek': dek,
      'totaluangmasuk': totaluangmasuk,
    }.withoutNulls,
  );

  return firestoreData;
}

class PemasukanRecordDocumentEquality implements Equality<PemasukanRecord> {
  const PemasukanRecordDocumentEquality();

  @override
  bool equals(PemasukanRecord? e1, PemasukanRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.nama, e2?.nama) &&
        listEquality.equals(e1?.tanggal, e2?.tanggal) &&
        e1?.dek == e2?.dek &&
        e1?.totaluangmasuk == e2?.totaluangmasuk &&
        listEquality.equals(e1?.listuangmasuk, e2?.listuangmasuk);
  }

  @override
  int hash(PemasukanRecord? e) => const ListEquality()
      .hash([e?.nama, e?.tanggal, e?.dek, e?.totaluangmasuk, e?.listuangmasuk]);

  @override
  bool isValidKey(Object? o) => o is PemasukanRecord;
}
