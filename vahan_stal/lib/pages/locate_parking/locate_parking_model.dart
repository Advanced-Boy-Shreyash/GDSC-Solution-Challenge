import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'locate_parking_widget.dart' show LocateParkingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';

class LocateParkingModel extends FlutterFlowModel<LocateParkingWidget> {
  ///  Local state fields for this page.

  List<LatLng> map = [];
  void addToMap(LatLng item) => map.add(item);
  void removeFromMap(LatLng item) => map.remove(item);
  void removeAtIndexFromMap(int index) => map.removeAt(index);
  void insertAtIndexInMap(int index, LatLng item) => map.insert(index, item);
  void updateMapAtIndex(int index, Function(LatLng) updateFn) =>
      map[index] = updateFn(map[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  Future searchMap(BuildContext context) async {}

  /// Additional helper methods are added here.
}
