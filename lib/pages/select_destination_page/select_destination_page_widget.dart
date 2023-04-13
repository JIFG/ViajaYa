import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_destination_page_model.dart';
export 'select_destination_page_model.dart';

class SelectDestinationPageWidget extends StatefulWidget {
  const SelectDestinationPageWidget({
    Key? key,
    this.coches,
  }) : super(key: key);

  final List<LatLng>? coches;

  @override
  _SelectDestinationPageWidgetState createState() =>
      _SelectDestinationPageWidgetState();
}

class _SelectDestinationPageWidgetState
    extends State<SelectDestinationPageWidget> {
  late SelectDestinationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDestinationPageModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ),
        ),
      );
    }

    return StreamBuilder<List<CarsRecord>>(
      stream: queryCarsRecord(
        queryBuilder: (carsRecord) => carsRecord.orderBy('last_ubication'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          );
        }
        List<CarsRecord> selectDestinationPageCarsRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryText,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: FlutterFlowPlacePicker(
                iOSGoogleMapsApiKey: 'AIzaSyAfTn6foaOvlgApBg1hvxnwHuvyAM7Rrig',
                androidGoogleMapsApiKey:
                    'AIzaSyBo7a16yFSFfZ7w3A8j1_emJMcG2P14U-8',
                webGoogleMapsApiKey: 'AIzaSyC5If8PEACqOiS9Snqif0VzI04c-z-fcxE',
                onSelect: (place) async {
                  setState(() => _model.placePickerValue = place);
                },
                defaultText: 'Select Location',
                icon: Icon(
                  Icons.place,
                  color: Colors.white,
                  size: 16.0,
                ),
                buttonOptions: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  color: FlutterFlowTheme.of(context).warning,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleSmallFamily,
                        color: Color(0xFF040404),
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () async {
                    context.pushNamed('Login');

                    var confirmDialogResponse = await showDialog<bool>(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Cerrar Sesion'),
                              content: Text('¿Estas Seguro?'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, false),
                                  child: Text('No'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext, true),
                                  child: Text('Si'),
                                ),
                              ],
                            );
                          },
                        ) ??
                        false;
                  },
                  child: Icon(
                    Icons.logout,
                    color: FlutterFlowTheme.of(context).warning,
                    size: 45.0,
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional(0.0, 0.8),
                      children: [
                        FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              _model.googleMapsCenter = latLng,
                          initialLocation: _model.googleMapsCenter ??=
                              currentUserLocationValue!,
                          markers: selectDestinationPageCarsRecordList
                              .map((e) => e.lastUbication)
                              .withoutNulls
                              .toList()
                              .map(
                                (marker) => FlutterFlowMarker(
                                  marker.serialize(),
                                  marker,
                                  () async {
                                    context.pushNamed(
                                      'carro',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.bottomToTop,
                                        ),
                                      },
                                    );
                                  },
                                ),
                              )
                              .toList(),
                          markerColor: GoogleMarkerColor.blue,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: false,
                          showLocation: true,
                          showCompass: true,
                          showMapToolbar: true,
                          showTraffic: false,
                          centerMapOnMarkerTap: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
