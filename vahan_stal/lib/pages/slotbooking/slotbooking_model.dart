import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'slotbooking_widget.dart' show SlotbookingWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SlotbookingModel extends FlutterFlowModel<SlotbookingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for licenceField widget.
  FocusNode? licenceFieldFocusNode;
  TextEditingController? licenceFieldController;
  String? Function(BuildContext, String?)? licenceFieldControllerValidator;
  String? _licenceFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for OwnerNa widget.
  FocusNode? ownerNaFocusNode;
  TextEditingController? ownerNaController;
  String? Function(BuildContext, String?)? ownerNaControllerValidator;
  String? _ownerNaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDownHours widget.
  double? dropDownHoursValue;
  FormFieldController<double>? dropDownHoursValueController;
  // State field(s) for DropDownMinutes widget.
  double? dropDownMinutesValue;
  FormFieldController<double>? dropDownMinutesValueController;
  // State field(s) for DropDownAMPM widget.
  String? dropDownAMPMValue;
  FormFieldController<String>? dropDownAMPMValueController;
  // State field(s) for DropDownParkTime widget.
  double? dropDownParkTimeValue;
  FormFieldController<double>? dropDownParkTimeValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BookingInfoRecord? vehicleInfo;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    licenceFieldControllerValidator = _licenceFieldControllerValidator;
    ownerNaControllerValidator = _ownerNaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    licenceFieldFocusNode?.dispose();
    licenceFieldController?.dispose();

    ownerNaFocusNode?.dispose();
    ownerNaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
