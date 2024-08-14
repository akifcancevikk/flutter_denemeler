// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapUsing extends StatefulWidget {
  const FlutterMapUsing({super.key});

  @override
  State<FlutterMapUsing> createState() => _FlutterMapUsingState();
}

class _FlutterMapUsingState extends State<FlutterMapUsing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Map Using'),),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(41.23432893133401, 32.66268354029536),
              initialZoom: 17,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://basemaps.cartocdn.com/rastertiles/voyager_nolabels/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              PolylineLayer(
              polylines: [
                Polyline(
                  points: [
                    LatLng(38.73, -9.14), // Lisbon, Portugal
                    LatLng(51.50, -0.12), // London, United Kingdom
                    LatLng(52.37, 4.90), // Amsterdam, Netherlands
                  ],
                  color: Colors.blue,
                  strokeWidth: 2,
                ),
              ],
            ),
            CircleLayer(
            circles: [
              CircleMarker(
                point: LatLng(52.2677, 5.1689), // center of 't Gooi
                radius: 10000,
                useRadiusInMeter: true,
                color: Colors.red.withOpacity(0.3),
                borderColor: Colors.red.withOpacity(0.7),
                borderStrokeWidth: 2,
              )
            ],
          ),
          MarkerLayer(
            markers: [
                Marker(
                  point: LatLng(51.509364, -0.128928),
                  width: 40,
                  height: 40,
                  child:  FlutterLogo(),
                ),
            ],
        ),
        MarkerLayer(
          markers: [
            buildMarker(LatLng(39.3999, -8.2245), "Amor"), // Portugal
            buildMarker(LatLng(55.3781, -3.4360), "Love"), // England
            buildMarker(LatLng(46.2276, 2.2137), "Aimer"), // France
            buildMarker(LatLng(52.1326, 5.2913), "Liefde"), // Netherlands
            buildMarker(LatLng(51.1657, 10.4515), "Liebe"), // Germany
          ],
        )
            ],
          )
        ],
      ),
    );
  }
  Marker buildMarker(LatLng coordinates, String word) {
  return Marker(
      point: coordinates,
      width: 200,
      height: 30,
      child: buildTextWidget(word)
  );
}
Container buildTextWidget(String word) {
  return Container(
      alignment: Alignment.center,
      child: Text(
          word,
          textAlign: TextAlign.center,
          style: getDefaultTextStyle()
      )
  );
}
TextStyle getDefaultTextStyle() {
  return const TextStyle(
    fontSize: 20,
    backgroundColor: Colors.black,
    color: Colors.white,
  );
}
}