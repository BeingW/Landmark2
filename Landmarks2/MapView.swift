//
//  MapView.swift
//  Landmarks2
//
//  Created by Jae Ki Lee on 2020/03/27.
//  Copyright © 2020 Jae Ki Lee. All rights reserved.
//

import SwiftUI
import MapKit
//UIViewRepresentable 은 SwiftUI 와 UIKit 와 연동하게 해준다.
//UIViewRepresentable 는 두가지 메서드를 반드시 요구한다.
//1.makeUIVew(context): UIView 를 만드는
//2.updateUIView(context):
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
