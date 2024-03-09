import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:life/components/my_drawer.dart';

class FlutterMapPage extends StatefulWidget {
  FlutterMapPage({super.key});

  @override
  State<FlutterMapPage> createState() => _FlutterMapPageState();
}

class _FlutterMapPageState extends State<FlutterMapPage> {
  //Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  @override
  Widget build(BuildContext context) {
    Position? _currentLocation;
    late bool servicePermission = false;
    late LocationPermission permission;

    String currentAddress = "";

    Future<Position> _getCurrentLocation() async {
      servicePermission = await Geolocator.isLocationServiceEnabled();
      if (!servicePermission) {
        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
        }
      }
      return await Geolocator.getCurrentPosition();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '地圖',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
        ),
        drawer: const Drawer(
          child: MyDrawer(),
        ),
        body: Stack(
          children: [
            FlutterMap(
                //set location
                options: const MapOptions(
                  //center: LatLng(22.988, 120.217),
                  zoom: 5.0,
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.testing.life',
                  ),
                  CurrentLocationLayer(),
                ]),
          ],
        ),
      ),
    );
  }
}
