//
//  GarageViewController.swift
//  parkPal
//
//  Created by Shivika Varshney on 10/20/23.
//

import UIKit
import MapKit

class GarageViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var priceRange: UIButton!
//    @IBOutlet var prices: [UIButton]!
    
    
//    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    let coordinate = CLLocationCoordinate2D(latitude: 39.95262, longitude:  -75.15324)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        price.isHidden = true
        configureMap()
    }

    private func configureMap() {
        view.addSubview(mapView)
//        mapView.frame = view.bounds
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        mapView.delegate = self
        addPins()
    }

    let pin = MKPointAnnotation()
    let pin2 = MKPointAnnotation()
    let pin3 = MKPointAnnotation()
    let pin4 = MKPointAnnotation()
    let pin5 = MKPointAnnotation()
    let pin6 = MKPointAnnotation()
    let pin7 = MKPointAnnotation()
    let pin8 = MKPointAnnotation()
    let pin9 = MKPointAnnotation()
    let pin10 = MKPointAnnotation()
    let pin11 = MKPointAnnotation()
    let pin12 = MKPointAnnotation()
    let pin13 = MKPointAnnotation()

    private func addPins() {

        pin.coordinate = coordinate
        pin.title = "Parkade"
        
        pin2.coordinate = CLLocationCoordinate2D(latitude: 39.95712, longitude: -75.16523)
        pin2.title = "Philadelphia Gateway Parking Garage"
        
        pin3.coordinate = CLLocationCoordinate2D(latitude:39.95456, longitude: -75.16502)
        pin3.title = "The Family Courthouse Garage"
        
        pin4.coordinate = CLLocationCoordinate2D(latitude: 39.95064, longitude: -75.15726)
        pin4.title = "The Autopark at Jefferson"
        
        pin5.coordinate = CLLocationCoordinate2D(latitude: 39.95038, longitude: -75.15376)
        pin5.title = "8th & Chestnut"
        
        pin6.coordinate = CLLocationCoordinate2D(latitude: 39.95226, longitude: -75.14976)
        pin6.title = "The Autopark at Independence Mall"
        
        pin7.coordinate = CLLocationCoordinate2D(latitude: 39.94761, longitude: -75.14344)
        pin7.title = "The Autopark at Olde City"
        
        pin8.coordinate = CLLocationCoordinate2D(latitude: 39.96038, longitude: -75.17069)
        pin8.title = "19th & Callowhill Street"
        
        pin9.coordinate = CLLocationCoordinate2D(latitude: 40.741895, longitude: -73.989308)
        pin9.title = "918 Cherry St. Lot - Chinatown"
        
        pin10.coordinate = CLLocationCoordinate2D(latitude: 39.9556549, longitude: -75.1551847)
        pin10.title = "929 Race Street"
        
        pin11.coordinate = CLLocationCoordinate2D(latitude: 39.9536925, longitude: -75.1580819)
        pin11.title = "Arch Street Parking"
        
        pin12.coordinate = CLLocationCoordinate2D(latitude: 39.956727, longitude: -75.150596)
        pin12.title = "North 7 Street"
        
        pin13.coordinate = CLLocationCoordinate2D(latitude: 39.9595786, longitude: -75.1668871)
        pin13.title = "North 17th Street"
        
        mapView.addAnnotations([pin, pin2, pin3, pin4, pin5, pin6, pin7, pin8, pin9, pin10, pin11, pin12, pin13])
        
        
    }
    
 
    @IBAction func underFive(_ sender: Any) {
        self.mapView.removeAnnotation(pin)
        self.mapView.removeAnnotation(pin2)
        self.mapView.removeAnnotation(pin3)
        self.mapView.removeAnnotation(pin4)
        self.mapView.removeAnnotation(pin5)
        self.mapView.removeAnnotation(pin6)
        self.mapView.removeAnnotation(pin7)
        self.mapView.removeAnnotation(pin8)
        self.mapView.removeAnnotation(pin9)
        self.mapView.removeAnnotation(pin10)
        mapView.addAnnotations([pin11, pin12, pin13])
    }
    
    @IBAction func fiveToTen(_ sender: Any) {
        self.mapView.removeAnnotation(pin)
        self.mapView.removeAnnotation(pin2)
        self.mapView.removeAnnotation(pin3)
        self.mapView.removeAnnotation(pin4)
        self.mapView.removeAnnotation(pin5)
        self.mapView.removeAnnotation(pin6)
        self.mapView.removeAnnotation(pin7)
        self.mapView.removeAnnotation(pin11)
        self.mapView.removeAnnotation(pin12)
        self.mapView.removeAnnotation(pin13)
        mapView.addAnnotations([pin8, pin9, pin10])

    }

    @IBAction func aboveTen(_ sender: Any) {
        self.mapView.removeAnnotation(pin8)
        self.mapView.removeAnnotation(pin9)
        self.mapView.removeAnnotation(pin10)
        self.mapView.removeAnnotation(pin11)
        self.mapView.removeAnnotation(pin12)
        self.mapView.removeAnnotation(pin13)
        mapView.addAnnotations([pin, pin2, pin3, pin4, pin5, pin6, pin7])

    }
    
    @IBAction func garage(_ sender: Any) {
        self.mapView.removeAnnotation(pin11)
        self.mapView.removeAnnotation(pin12)
        self.mapView.removeAnnotation(pin13)
        mapView.addAnnotations([pin, pin2, pin3, pin4, pin5, pin6, pin7, pin8, pin9, pin10])
    }
    
    @IBAction func street(_ sender: Any) {
        self.mapView.removeAnnotation(pin)
        self.mapView.removeAnnotation(pin2)
        self.mapView.removeAnnotation(pin3)
        self.mapView.removeAnnotation(pin4)
        self.mapView.removeAnnotation(pin5)
        self.mapView.removeAnnotation(pin6)
        self.mapView.removeAnnotation(pin7)
        self.mapView.removeAnnotation(pin8)
        self.mapView.removeAnnotation(pin9)
        self.mapView.removeAnnotation(pin10)
        mapView.addAnnotations([pin11, pin12, pin13])
    }
    
    @IBAction func bothTypes(_ sender: Any) {
        mapView.addAnnotations([pin, pin2, pin3, pin4, pin5, pin6, pin7, pin8, pin9, pin10, pin11, pin12, pin13])
    }
}
