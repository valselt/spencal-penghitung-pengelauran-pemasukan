import '/flutter_flow/flutter_flow_util.dart';
import 'uang_masuk_widget.dart' show UangMasukWidget;
import 'package:flutter/material.dart';

class UangMasukModel extends FlutterFlowModel<UangMasukWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
