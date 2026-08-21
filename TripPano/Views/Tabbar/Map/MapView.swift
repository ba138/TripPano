import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var thelat = Double()
    var thelong = Double()
    var pickMap = Int()
    var whichMap = [MKMapType.standard, MKMapType.hybrid, MKMapType.satellite]

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: thelat,
            longitude: thelong)
        let span = MKCoordinateSpan(latitudeDelta: 0.0002, longitudeDelta: 0.0002)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.mapType = whichMap[pickMap]
    }
}

#Preview {
    MapView(thelat: 34.011286, thelong: -116.166868).ignoresSafeArea()
}
