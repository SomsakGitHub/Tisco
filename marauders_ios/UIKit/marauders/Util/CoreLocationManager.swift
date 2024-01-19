//
//  LocationManager.swift
//  marauders
//
//  Created by somsak on 24/10/2566 BE.
//

//https://github.com/RajanMaheshwari/LocationManager

import CoreLocation
import UIKit

final class CoreLocationManager: NSObject, CLLocationManagerDelegate {
    
    static let shared = CoreLocationManager()
    
    var locationManager :CLLocationManager?
    
    private override init() {}
    
    func configureCLLocationManager(){
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        // Step 3: request authorization
        locationManager?.requestAlwaysAuthorization()
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .denied: // Setting option: Never
          print("LocationManager didChangeAuthorization denied")
            //self.stopLoading()
//            self.alert(title: "Turn On Location Services.") { (bool) in
//                let locationServices = UserDefaults.standard.bool(forKey: "locationServices")
//                if locationServices {
//                    UIApplication.shared.open(URL(string:UIApplication.openSettingsURLString)!)
//                    print("true true")
//                }else{
//                    UIApplication.shared.open(URL(string: "App-prefs:root=LOCATION_SERVICES")!)
//                    print("false false")
//                }
//            }
            
            //self.performSegue(withIdentifier: "goToLocationSetting", sender: nil)
            
        case .notDetermined: // Setting option: Ask Next Time
          print("LocationManager didChangeAuthorization notDetermined")
            
            //self.dismiss(animated: true) {}
            
        case .authorizedWhenInUse: // Setting option: While Using the App
          print("LocationManager didChangeAuthorization authorizedWhenInUse")
          // Stpe 6: Request a one-time location information
            locationManager?.requestLocation()
            
        case .authorizedAlways: // Setting option: Always
          print("LocationManager didChangeAuthorization authorizedAlways")
          // Stpe 6: Request a one-time location information
            locationManager?.requestLocation()
            
        case .restricted: // Restricted by parental control
          print("LocationManager didChangeAuthorization restricted")
            
        default:
          print("LocationManager didChangeAuthorization")
        }
    }

  // Step 7: Handle the location information
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    print("LocationManager didUpdateLocations: numberOfLocation: \(locations.count)")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    
    locations.forEach { (location) in
      print("LocationManager didUpdateLocations: \(dateFormatter.string(from: location.timestamp)); \(location.coordinate.latitude), \(location.coordinate.longitude)")
//        self.latLongData[0] = location.coordinate.latitude
//        self.latLongData[1] = location.coordinate.longitude
        //goToHomeScreen()
        
      print("LocationManager altitude: \(location.altitude)")
//      print("LocationManager floor?.level: \(location.floor?.level)")
      print("LocationManager horizontalAccuracy: \(location.horizontalAccuracy)")
      print("LocationManager verticalAccuracy: \(location.verticalAccuracy)")
      print("LocationManager speedAccuracy: \(location.speedAccuracy)")
      print("LocationManager speed: \(location.speed)")
      print("LocationManager timestamp: \(location.timestamp)")
      print("LocationManager courseAccuracy: \(location.courseAccuracy)") // 13.4
      print("LocationManager course: \(location.course)")
    }
  }
  
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("LocationManager didFailWithError \(error.localizedDescription)")
    if let error = error as? CLError, error.code == .denied {
       // Location updates are not authorized.
      // To prevent forever looping of `didFailWithError` callback
        locationManager?.stopMonitoringSignificantLocationChanges()
       return
    }
  }
}
