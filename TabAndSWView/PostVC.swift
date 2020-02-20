//
//  PostVC.swift
//  TabAndSWView
//
//  Created by apple on 2/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class PostVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        GMSServices.provideAPIKey("AIzaSyBzw3KUlMrhBk7PoltOzsLfGQqefPTzSnc")
//        GMSPlacesClient.provideAPIKey("AIzaSyBzw3KUlMrhBk7PoltOzsLfGQqefPTzSnc")
        
        let camera = GMSCameraPosition.camera(withLatitude: 23.805349, longitude: 90.370014, zoom: 15.0)
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 23.805349, longitude: 90.370014)
        marker.title = "Mirpur 10"
        marker.snippet = "Bangladesh IT"
        marker.map = mapView
        // Do any additional setup after loading the view.
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
