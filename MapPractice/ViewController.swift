//
//  ViewController.swift
//  MapPractice
//
//  Created by 周梦 on 7/31/15.
//  Copyright (c) 2015 野狗部落. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var myMap : MKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zoomToNewYork(){
        var latitude : CLLocationDegrees = 30.67
        var longitude : CLLocationDegrees = 104.06
        
        var latitudeDelta : CLLocationDegrees = 0.10
        var longitudeDelta : CLLocationDegrees = 0.10
        
        var mapSpan : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latitudeDelta, longitudeDelta: longitudeDelta)
        
        var myLocation : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        var myRegion : MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: mapSpan)
        
        myMap?.setRegion(myRegion, animated: true)
        
        var empireStatePin = MKPointAnnotation()
        
        empireStatePin.title="Wow"
        empireStatePin.subtitle="Hey there"
        empireStatePin.coordinate=myLocation
        
        myMap?.addAnnotation(empireStatePin)
    }
    
    @IBAction func satelliteView(){
        myMap?.mapType = MKMapType.Satellite
    }
    
    @IBAction func normalView(){
        myMap?.mapType = MKMapType.Standard
    }

}

