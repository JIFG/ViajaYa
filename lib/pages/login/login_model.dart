import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressi widget.
  TextEditingController? emailAddressiController;
  String? Function(BuildContext, String?)? emailAddressiControllerValidator;
  // State field(s) for passwordsi widget.
  TextEditingController? passwordsiController;
  late bool passwordsiVisibility;
  String? Function(BuildContext, String?)? passwordsiControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordsiVisibility = false;
  }

  void dispose() {
    emailAddressiController?.dispose();
    passwordsiController?.dispose();
  }

  /// Additional helper methods are added here.

}
