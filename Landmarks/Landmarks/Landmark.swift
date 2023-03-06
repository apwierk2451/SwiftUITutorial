//
//  Landmark.swift
//  Landmarks
//
//  Created by 이은찬 on 2023/03/06.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    static func == (lhs: Landmark, rhs: Landmark) -> Bool {
        return lhs == rhs ? true : false
    }
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates {
        var latitude: Double
        var longitude: Double
    }
}
