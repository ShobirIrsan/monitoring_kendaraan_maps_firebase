part of 'pages.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  final databaseReference = FirebaseDatabase.instance.reference();
  Set<Marker> _markers = {};
  LatLng _currentPosition = LatLng(3.566038, 98.659086);
  String lintang = "3.566038", bujur = "98.659086";
  String lastLintang = "3.566037", lastBujur = "98.659087", status = "on";
  @override
  void initState() {
    _markers.add(
        Marker(
            markerId: MarkerId("car_aja"),
            position: _currentPosition,
            // rotation: 180.0,
            icon: BitmapDescriptor.fromAsset(status == "on"?"assets/images/car_pin.png":"assets/images/curi.png")
            ),
      );
    databaseReference.child('/').onValue.listen((event) {
      var snapshot = event.snapshot;
      setState(() {
        lintang = snapshot.value['lintang'];
        bujur = snapshot.value['bujur'];
        status = snapshot.value['status'];
        print('lintang is $lintang');
        print('bujur is $bujur');
        print('bujur is $status');
        LatLng _currentPosition =
          LatLng(double.parse(lintang), double.parse(bujur));
      _markers.add(
        Marker(
            markerId: MarkerId("car_aja"),
            position: _currentPosition,
            // rotation: 180.0,
            icon: BitmapDescriptor.fromAsset(status == "on"?"assets/images/car_pin.png":"assets/images/curi.png")
            ),
      );
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: _currentPosition,
              zoom: 14.0,
            ),
            markers: _markers),
      ),
    );
  }
}
