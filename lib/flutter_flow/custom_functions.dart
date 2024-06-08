import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int dek(int indek) {
  return indek;
}

int dekCopy(int indek) {
  return indek - 1;
}

int dekCopyCopy(int indek) {
  return indek - 2;
}

double addTotal(
  double uangPemasukan,
  double uangPengeluaran,
) {
  return uangPemasukan - uangPengeluaran;
}
