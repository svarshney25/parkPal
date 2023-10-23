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
    @IBOutlet var prices: [UIButton]!
        
    @IBOutlet weak var mapView: MKMapView!
    let coordinate = CLLocationCoordinate2D(latitude: 39.95262, longitude:  -75.15324)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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


    private func addPins() {
        let pin = MKPointAnnotation()

        pin.coordinate = coordinate
        pin.title = "Parkade"
        
        let pin2 = MKPointAnnotation()
        pin2.coordinate = CLLocationCoordinate2D(latitude: 39.95712, longitude: -75.16523)
        pin2.title = "Philadelphia Gateway Parking Garage"
        
        let pin3 = MKPointAnnotation()
        pin3.coordinate = CLLocationCoordinate2D(latitude:39.95456, longitude: -75.16502)
        pin3.title = "The Family Courthouse Garage"
        
        let pin4 = MKPointAnnotation()
        pin4.coordinate = CLLocationCoordinate2D(latitude: 39.95064, longitude: -75.15726)
        pin4.title = "The Autopark at Jefferson"
        
        let pin5 = MKPointAnnotation()
        pin5.coordinate = CLLocationCoordinate2D(latitude: 39.95038, longitude: -75.15376)
        pin5.title = "8th & Chestnut"
        
        let pin6 = MKPointAnnotation()
        pin6.coordinate = CLLocationCoordinate2D(latitude: 39.95226, longitude: -75.14976)
        pin6.title = "The Autopark at Independence Mall"
        
        let pin7 = MKPointAnnotation()
        pin7.coordinate = CLLocationCoordinate2D(latitude: 39.94761, longitude: -75.14344)
        pin7.title = "The Autopark at Olde City"
        
        let pin8 = MKPointAnnotation()
        pin8.coordinate = CLLocationCoordinate2D(latitude: 39.96038, longitude: -75.17069)
        pin8.title = "19th & Callowhill Street"
        
        let pin9 = MKPointAnnotation()
        pin9.coordinate = CLLocationCoordinate2D(latitude: 40.741895, longitude: -73.989308)
        pin9.title = "918 Cherry St. Lot - Chinatown"
        
        let pin10 = MKPointAnnotation()
        pin10.coordinate = CLLocationCoordinate2D(latitude: 39.9556549, longitude: -75.1551847)
        pin10.title = "929 Race Street"
        
        mapView.addAnnotations([pin, pin2, pin3, pin4, pin5, pin6, pin7, pin8, pin9, pin10])
        
        
    }

    
    func showButtonVisibility() {
        prices.forEach{ button in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }

    @IBAction func selectPrice(_ sender: Any) {
        showButtonVisibility()
    }
    
    @IBAction func priceChoices(_ sender: UIButton) {
        showButtonVisibility()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}
