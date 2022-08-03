//
//  MapViewController.swift
//  aCityOfUnfortunateEvents
//
//  Created by Scholar on 8/2/22.
//

import UIKit

import MapKit

class MapViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLocation = CLLocation(latitude : +40.730610, longitude : -73.935242)
        
        mapView.centerToLocation(initialLocation)
        
        // Do any additional setup after loading the view.
    }

}


private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}

// OPTION + COMMAND hold  to zoom out or in the map.
