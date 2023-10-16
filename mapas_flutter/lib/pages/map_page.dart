import '../export.dart';
import 'package:latlong2/latlong.dart';

const mapboxAccessToken =
    'pk.eyJ1IjoiZGFuaWVsMDMxOSIsImEiOiJjbG50Z2h0cGUwM2N4MmxxaXNjeW9idWEzIn0.ZJ6Jv1pPdMo-zmbsUesSmA';
const initPosition = LatLng(19.432777, 99.133217);

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text('Mapa en Flutter'),
      ),
      body: FlutterMap(
        options: const MapOptions(
            initialCenter: initPosition,
            minZoom: 5,
            maxZoom: 25,
            initialZoom: 17),
        children: [
          TileLayer(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
            additionalOptions: const {
              'accessToken': mapboxAccessToken,
              'id': 'mapbox/streets-v12'
            },
          )
        ],
      ),
    );
  }
}
