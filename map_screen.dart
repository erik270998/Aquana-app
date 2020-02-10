import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(40.4020732, -3.7012827);

    void _setStyle(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
                           .loadString('assets/maps_style.json');
    controller.setMapStyle(value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
          'MAPA',
            style: TextStyle(
            color: Colors.black87,
            fontFamily: 'syncopate',
            fontSize: 15,
            fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: Container(
          child: GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _setStyle(controller);
              _controller.complete(controller);
            },
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 17.0,
              tilt: 60.0,
              bearing: 45.0,
            ),
          ),
        ),
      ),
    );
  }
}
