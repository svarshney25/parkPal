//
//  StreetParkingViewController.swift
//  parkPal
//
//  Created by Shivika Varshney on 10/23/23.
//

import UIKit
import MapKit

class StreetParkingViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let coordinate = CLLocationCoordinate2D(latitude: 39.9536925, longitude: -75.1580819)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMap()
        // Do any additional setup after loading the view.
    }
    
    private func configureMap() {
        view.addSubview(mapView)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        addPins()
    }
    
    let pin = MKPointAnnotation()
    let pin2 = MKPointAnnotation()
    let pin3 = MKPointAnnotation()
    
    private func addPins() {
        pin.coordinate = coordinate
        pin.title = "Arch Street"
        
        pin2.coordinate = CLLocationCoordinate2D(latitude: 39.956727, longitude: -75.150596)
        pin2.title = "North 7 Street"
        
        pin3.coordinate = CLLocationCoordinate2D(latitude: 39.9595786, longitude: -75.1668871)
        pin3.title = "North 17th Street"
        
    }
 

}
