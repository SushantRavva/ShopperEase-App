import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AddNewProoductModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField3 widget.
  TextEditingController? textField3Controller;
  String? Function(BuildContext, String?)? textField3ControllerValidator;
  // State field(s) for TextField4 widget.
  TextEditingController? textField4Controller;
  String? Function(BuildContext, String?)? textField4ControllerValidator;
  // State field(s) for TextField5 widget.
  TextEditingController? textField5Controller;
  String? Function(BuildContext, String?)? textField5ControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textField3Controller?.dispose();
    textField4Controller?.dispose();
    textField5Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
