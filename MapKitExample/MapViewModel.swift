//
//  MapViewModel.swift
//  MapKitExample
//
//  Created by bwells on 2/17/23.
//

import Foundation
import MapKit

internal class MapViewModel {
    
    var parkData: [Facility]?
    
    private func getParksData() -> ParkData? {
        
        var data: (status: ApiStatus,  data: Any)
        
        data = ReadLocalJSONFile().readLocalJSONFile(fileName: "./ParkData")
        
        if(data.status == .success) {
            do {
                let json = try JSONDecoder().decode(ParkData.self, from: data.data as! Data)
                return  (json)
            } catch {
                return (nil)
            }
                      
        }
        return (nil)
    }
    
    func getParks() -> [Facility]? {
        if let parks = getParksData() {
            parkData = parks.data.getParks.facilities
            return parks.data.getParks.facilities
        }
        
        return nil
        
    }
    
    func getAnnotations() -> [MKPointAnnotation]{
  
        var annotationsArray = [MKPointAnnotation]()
        if let parkDataArr = getParks() {
            for x in parkDataArr {
                if let lat = Double(x.latlng[0]), let lng = Double(x.latlng[1]) {
                    let annot = MKPointAnnotation()
                    annot.title = x.title
                    annot.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
                    annotationsArray.append(annot)
                }
            }
            return annotationsArray
            
        }
        return annotationsArray
    }
    
}
