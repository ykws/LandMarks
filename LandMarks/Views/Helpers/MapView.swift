//
//  MapView.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/26.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

/* 一旦むこう
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarks[0].locationCoordinate)
    }
}*/
