import '/flutter_flow/flutter_flow_util.dart';
import 'uang_keluar_widget.dart' show UangKeluarWidget;
import 'package:flutter/material.dart';

class UangKeluarModel extends FlutterFlowModel<UangKeluarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
