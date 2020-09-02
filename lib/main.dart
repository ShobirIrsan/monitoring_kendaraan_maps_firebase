import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:monitoring_kendaraan/pages/pages.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: PageHome(),
    );
  }
}

// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   final databaseReference = FirebaseDatabase.instance.reference();
//   String lintang= "data", bujur = "data";
//   @override
//   void initState(){
//     databaseReference.child('/').onValue.listen((event) {
//       var snapshot = event.snapshot;
//       setState(() {
//         lintang = snapshot.value['lintang'];
//        bujur = snapshot.value['bujur'];
//       print('Value is $lintang');
//       });
//     });
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("lintang = "+lintang),
//                 Text("bujur = "+bujur),
//               ],
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//    Set<Marker> _markers = {};
//    LatLng _currentPosition = LatLng(3.562635, 98.652970);

//   @override
//   void initState() {
//     _markers.add(
//       Marker(
//           markerId: MarkerId("3.566038, 98.659086"),
//           position: _currentPosition,
//           icon: BitmapDescriptor.fromAsset("assets/images/motorcycle.png")),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Row(
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               setState(() {
//                  _currentPosition = LatLng(3.566038, 98.659906);
//               _markers.add(
//                 Marker(
//                     markerId: MarkerId("3.566038, 98.659086"),
//                     position: _currentPosition,
//                     icon:
//                         BitmapDescriptor.fromAsset("assets/images/motorcycle.png")),
//               );
//               });
//             },
//           ),
//         ],
//       ),
//       appBar: AppBar(
//         title: Text('Google Maps Flutter'),
//       ),
//       body: GoogleMap(
//         mapType: MapType.normal,
//         initialCameraPosition: CameraPosition(
//           target: _currentPosition,
//           zoom: 14.0,
//         ),
//         markers: _markers,
//       ),
//     );
//   }
// }
