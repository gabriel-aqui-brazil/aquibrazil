// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'package:google_maps_flutter/google_maps_flutter.dart' as google_maps;

class MapWidget extends StatefulWidget {
  const MapWidget(
      {super.key,
      this.width,
      this.height,
      this.zoom,
      this.initialLat,
      this.initialLng,
      required this.onLocationChanged});

  final double? width;
  final double? height;
  final double? zoom;
  final double? initialLat;
  final double? initialLng;
  final Future Function(double lat, double lng) onLocationChanged;

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  google_maps.Marker? _marker;

  google_maps.LatLng _getInitialLatLng() {
    double lat = widget.initialLat ?? -23.55052;
    double lng = widget.initialLng ?? -46.633308;
    return google_maps.LatLng(lat, lng);
  }

  @override
  void initState() {
    super.initState();
    google_maps.LatLng initialLatLng = _getInitialLatLng();
    double formattedLat =
        double.parse(initialLatLng.latitude.toStringAsFixed(7));
    double formattedLng =
        double.parse(initialLatLng.longitude.toStringAsFixed(7));

    _marker = google_maps.Marker(
      markerId: google_maps.MarkerId('user_marker'),
      // position: initialLatLng,
      position: google_maps.LatLng(formattedLat, formattedLng),
      infoWindow: google_maps.InfoWindow(
        title: 'Local Inicial',
        // snippet:
        //     'Lat: ${initialLatLng.latitude}, Lng: ${initialLatLng.longitude}',
        snippet: 'Lat: $formattedLat, Lng: $formattedLng',
      ),
    );
    // widget.onLocationChanged(initialLatLng.latitude, initialLatLng.longitude);
    widget.onLocationChanged(formattedLat, formattedLng);
  }

  void _onMapTap(google_maps.LatLng position) async {
    double formattedLat = double.parse(position.latitude.toStringAsFixed(7));
    double formattedLng = double.parse(position.longitude.toStringAsFixed(7));

    setState(() {
      _marker = google_maps.Marker(
        markerId: google_maps.MarkerId('user_marker'),
        position: position,
        infoWindow: google_maps.InfoWindow(
          title: 'Local Clicado',
          // snippet: 'Lat: ${position.latitude}, Lng: ${position.longitude}',
          snippet: 'Lat: $formattedLat, Lng: $formattedLng',
        ),
      );
    });

    // await widget.onLocationChanged(position.latitude, position.longitude);
    await widget.onLocationChanged(formattedLat, formattedLng);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Posição Clicada'),
        // content: Text('Lat: ${position.latitude}, Lng: ${position.longitude}'),
        content: Text('Lat: $formattedLat, Lng: $formattedLng'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    google_maps.LatLng initialLatLng = _getInitialLatLng();

    return Scaffold(
      // appBar: AppBar(title: Text('Google Maps')),
      body: google_maps.GoogleMap(
        initialCameraPosition: google_maps.CameraPosition(
          target: initialLatLng,
          zoom: widget.zoom ?? 20,
        ),
        onTap: _onMapTap,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: _marker != null ? {_marker!} : {},
      ),
    );
  }
}
