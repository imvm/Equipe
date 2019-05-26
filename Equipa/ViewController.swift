//
//  ViewController.swift
//  Equipa
//
//  Created by Ian Manor on 26/05/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit
import MapKit
import SideMenu

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Equipa"
        
        let menuLeftNavigationController = UISideMenuNavigationController(rootViewController: SideMenuTableViewController())
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        SideMenuManager.default.menuFadeStatusBar = false
        
        addDynamicPins()
    }
    
    func addDynamicPins() {
        let myCoordinates = CLLocationCoordinate2D(latitude: -8.0627432, longitude: -34.8679238)
        let region = MKCoordinateRegion(center: myCoordinates, latitudinalMeters: CLLocationDistance(exactly: 3000)!, longitudinalMeters: CLLocationDistance(exactly: 3000)!)
        mapView.setRegion(mapView.regionThatFits(region), animated: false)
        
        let annotation = MKPointAnnotation()
        let centerCoordinate = CLLocationCoordinate2D(latitude: -8.0627432, longitude:-34.8679238)
        annotation.coordinate = centerCoordinate
        annotation.title = "Dinâmico 1.6x"
        mapView.addAnnotation(annotation)
        
        let annotation2 = MKPointAnnotation()
        let centerCoordinate2 = CLLocationCoordinate2D(latitude: -8.0627432, longitude:-34.8679238)
        annotation2.coordinate = centerCoordinate2
        annotation2.title = "Dinâmico 2.3x"
        mapView.addAnnotation(annotation2)
        
        let annotation3 = MKPointAnnotation()
        let centerCoordinate3 = CLLocationCoordinate2D(latitude: -8.0827432, longitude:-34.8679238)
        annotation3.coordinate = centerCoordinate3
        annotation3.title = "Dinâmico 1.2x"
        mapView.addAnnotation(annotation3)
    }
    
    @IBAction func showDeliveryRequest(_ sender: Any) {
        let alertController = UIAlertController(title: "Nova solicitação de delivery.", message: "Degusta Sorvetes e Gelados", preferredStyle: .alert)
        
        let acceptAction = UIAlertAction(title: "Aceitar", style: .default, handler: nil)
        alertController.addAction(acceptAction)
        
        let refuseAction = UIAlertAction(title: "Recusar", style: .cancel, handler: nil)
        alertController.addAction(refuseAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}

