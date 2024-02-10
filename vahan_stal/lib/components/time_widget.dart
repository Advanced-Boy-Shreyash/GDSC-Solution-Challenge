import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'time_model.dart';
export 'time_model.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({Key? key}) : super(key: key);

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  late TimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            FlutterFlowDropDown<double>(
              controller: _model.dropDownValueController1 ??=
                  FormFieldController<double>(null),
              options: List<double>.from([
                1.0,
                2.0,
                3.0,
                4.0,
                5.0,
                6.0,
                7.0,
                8.0,
                9.0,
                10.0,
                11.0,
                12.0
              ]),
              optionLabels: [
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                '8',
                '9',
                '10',
                '11',
                '12'
              ],
              onChanged: (val) => setState(() => _model.dropDownValue1 = val),
              width: 134.0,
              height: 50.0,
              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
              textStyle: FlutterFlowTheme.of(context).bodyMedium,
              hintText: 'Hours',
              searchHintText: 'Hours ...',
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: true,
              isMultiSelect: false,
            ),
            Align(
              alignment: AlignmentDirectional(0.24, -0.42),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: FlutterFlowDropDown<double>(
                  controller: _model.dropDownValueController2 ??=
                      FormFieldController<double>(null),
                  options: List<double>.from([
                    00.0,
                    05.0,
                    10.0,
                    15.0,
                    20.0,
                    25.0,
                    30.0,
                    35.0,
                    40.0,
                    45.0,
                    50.0,
                    55.0
                  ]),
                  optionLabels: [
                    '00',
                    '05',
                    '10',
                    '15',
                    '20',
                    '25',
                    '30',
                    '35',
                    '40',
                    '45',
                    '50',
                    '55'
                  ],
                  onChanged: (val) =>
                      setState(() => _model.dropDownValue2 = val),
                  width: 142.0,
                  height: 50.0,
                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                  hintText: 'Minutes',
                  searchHintText: 'Minutes ...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: true,
                  isMultiSelect: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.99, 0.42),
              child: FlutterFlowDropDown<String>(
                controller: _model.dropDownValueController3 ??=
                    FormFieldController<String>(null),
                options: List<String>.from(['AM', 'PM']),
                optionLabels: ['AM', 'PM'],
                onChanged: (val) => setState(() => _model.dropDownValue3 = val),
                width: 116.0,
                height: 35.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'AM/PM',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
