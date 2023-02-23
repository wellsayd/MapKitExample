//
//  ViewController.swift
//  MapKitExample
//
//  Created by bwells on 2/17/23.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    let regionRadius: CLLocationDistance = 20000
    private var viewModel = MapViewModel()
    private var parksData: [Facility]?
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        parksData = viewModel.getParks()

        let location = CLLocation(latitude: 36.787731, longitude: -76.052980)
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.addAnnotations(viewModel.getAnnotations())
        
    }


}

