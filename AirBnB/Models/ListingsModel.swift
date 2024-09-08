//
//  ListingsModel.swift
//  AirBnB
//
//  Created by Ujjwal Arora on 08/09/24.
//

import Foundation

class ListingsModel : Identifiable, Codable  {
    var id = UUID().uuidString
    let title : String
    let rating : Double
    let pricePerNight : Int
    let ownerId : String
    let ownerName : String
    let ownerImageUrl : String
    let numberOfBedrooms : Int
    let numberOfBathrooms : Int
    let latitude : Double
    let longitude : Double
    let imageUrl : String
    let address : String
    let city : String
    let state : String
    let country : String
    var amenities : [Amenitie]
    var features : [Feature]
    var buildingType : BuildingType
}
enum Amenitie : Int, Identifiable, Codable , Hashable{
    case selfCheckIn , superHost
    
    var title : String {
        switch self {
        case .selfCheckIn:
            return "Self CheckIn"
        case .superHost:
            return "Super Host"
        }
    }
    var imageName : String {
        switch self {
        case .selfCheckIn:
            return "door.left.hand.open"
        case .superHost:
            return "medal"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
enum Feature : Int, Identifiable, Codable , Hashable{
    case pool,kitchen,wifi,tv,laundry,alarmSystem,fireSafety,officeSpace,balcony
    
    var title : String {
        switch self {
        case .pool:
            return "Pool"
        case .kitchen:
            return "Kitchen"
        case .wifi:
            return "Wifi"
        case .tv:
            return "TV"
        case .laundry:
            return "Laundry"
        case .alarmSystem:
            return "Alarm System"
        case .fireSafety:
            return "Fire Safety"
        case .officeSpace:
            return "Office Space"
        case .balcony:
            return "Balcony"
        }
    }
    var imageName : String {
        switch self {
        case .pool:
            return "figure.pool.swim.circle"
        case .kitchen:
            return "fork.knife"
        case .wifi:
            return "wifi"
        case .tv:
            return "tv"
        case .laundry:
            return "washer"
        case .alarmSystem:
            return "shield.pattern.checkered"
        case .fireSafety:
            return "fire.extinguisher.fill"
        case .officeSpace:
            return "pencil.and.list.clipboard"
        case .balcony:
            return "building"
        }
    }
    var id: Int {
        return self.rawValue
    }
}
enum BuildingType : Int , Codable, Identifiable, Hashable{
    case house,villa,flat,farmHouse
    
    var title : String {
        switch self {
        case .house:
            return "House"
        case .villa:
            return "Villa"
        case .flat:
            return "Flat"
        case .farmHouse:
            return "Farm House"
        }
    }
    var id: Int {
        return self.rawValue
    }
        
}

