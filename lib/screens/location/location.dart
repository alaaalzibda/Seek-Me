import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../general_exports.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'choose_location'.tr,
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          SizedBox(
            width: DEVICE_WIDTH * 0.07,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: const [
                MapSample(),
              ],
            ),
            // SizedBox(
            //   height: DEVICE_HEIGHT * 0.3,
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100]!,
            //     boxShadow: const <BoxShadow>[
            //       BoxShadow(
            //         blurRadius: 4,
            //         offset: Offset(1, 1),
            //       ),
            //     ],
            //     borderRadius: const BorderRadius.only(
            //       topLeft: Radius.circular(20),
            //       topRight: Radius.circular(30),
            //     ),
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: DEVICE_HEIGHT * 0.03),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: <Widget>[
            //         SizedBox(
            //           height: DEVICE_HEIGHT * 0.03,
            //         ),
            //         Row(
            //           children: <Widget>[
            //             const Icon(
            //               Icons.location_on,
            //             ),
            //             SizedBox(
            //               width: DEVICE_WIDTH * 0.03,
            //             ),
            //             Text(
            //               '89, Bhel Nagar, Piplani, Ayodhya Nagar Extension',
            //               style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: DEVICE_WIDTH * 0.04,
            //                 letterSpacing: DEVICE_WIDTH * 0.002,
            //               ),
            //             )
            //           ],
            //         ),
            //         SizedBox(
            //           height: DEVICE_HEIGHT * 0.01,
            //         ),
            //         Row(
            //           children: [
            //             SizedBox(
            //               width: DEVICE_WIDTH * 0.09,
            //             ),
            //             const Text(
            //               'Ayodhya Bypass',
            //               style: TextStyle(color: Colors.grey),
            //             ),
            //           ],
            //         ),
            //         SizedBox(
            //           height: DEVICE_HEIGHT * 0.07,
            //         ),
            //         ElevatedButtonDiv(
            //           title: 'Confirm location',
            //           color: Colors.deepPurpleAccent,
            //           isButtonEnabled: true,
            //           onPress: () {},
            //         ),
            //         SizedBox(
            //           height: DEVICE_HEIGHT * 0.05,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static const Marker _kGooglePlexMarker = Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    position: LatLng(37.42796133580664, -122.085749655962),
  );
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  static final Marker _kLakeMarker = Marker(
    markerId: const MarkerId('_kLakeMarket'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    infoWindow: const InfoWindow(title: 'Lake'),
    position: const LatLng(37.43296265331129, -122.08832357078792),
  );
  static const Polyline _kPolyline = Polyline(
    polylineId: PolylineId('_kPolyline'),
    points: [
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.43296265331129, -122.08832357078792),
    ],
    width: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: {
          _kGooglePlexMarker,
          _kLakeMarker,
        },
        polylines: {
          _kPolyline,
        },
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
