import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationFinderPage extends StatefulWidget {
  const LocationFinderPage({super.key});

  @override
  State<LocationFinderPage> createState() => _LocationFinderPageState();
}

class _LocationFinderPageState extends State<LocationFinderPage> {
  late String lat;
  late String long;
  late String latLive;
  late String longLive;
  String locationMessage = 'Kullanıcının Mevcut Konumu';
  String locationMessageLive = 'Kullanıcının Canlı Konumu';
  Future<Position?> _getCurrentLocation() async {
    bool serviceEnable = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnable){
      return Future.error('Konum Kapalı');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
    }
    if(permission == LocationPermission.denied){
      return Future.error('Lokasyon izni verilmedi');
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error('Konum hizmeti sonsuza kadar iptal edildi.');
    }
    return await Geolocator.getCurrentPosition();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location Finder Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(locationMessage, textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              _getCurrentLocation().then((value){
                lat = '${value?.latitude}';
                long = '${value?.longitude}';
                setState(() {
                  locationMessage = 'Enlem: $lat , Boylam: $long';
                });
                _liveLocation();
              });
            }, child: Text('Konumu Al')),
            SizedBox(height: 20,),
            Text(locationMessageLive, textAlign: TextAlign.center,),

          ],
        ),
      ),
    );
  }
  
  void _liveLocation() {
    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    Geolocator.getPositionStream(locationSettings: locationSettings).listen((Position position){
      latLive = position.latitude.toString();
      longLive = position.longitude.toString(); 
      setState(() {
        locationMessageLive = 'Enlem: $latLive , Boylam: $longLive';
      });
    });
  }
}