//
//  VenemedicinasApiList.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 12.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//
/*
 [
 {
 "Id":111243559,
 "ActiveIngredient":"Acetaminofen Elter 650 mg x 10 Tabletas",
 "Description":"Acetaminofen Elter 650 mg x 10 Tabletas",
 "variant":[
 {
 "direccion":"farmatodo restinga, av aldonza manrique con av bolivar. no i-6 urb playa el angel",
 "Name":"Farmatodo RESTINGA",
 "Availability":2,
 "City":"Porlamar"}
 ]
 }
 ]
 */
/*
import Foundation

struct MedicamentResponse: Decodable {
    var venemedicinasList: [VenemedicinasListEntry]
    
    init(from decoder: Decoder) throws{
        var venemedicinasList = [VenemedicinasListEntry]()
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            if let route = try? container.decode(VenemedicinasListEntry.self){
                venemedicinasList.append(route)
            }else {
                _ = try? container.decode(DummyData.self)
            }
        }
        self.venemedicinasList = venemedicinasList
    }
}

struct DummyData: Decodable{}

struct VenemedicinasListEntry: Decodable {
    var Id: Int
    var ActiveIngredient: String
    var Description: String
    var variant: [Variant]
}

struct Variant: Decodable {
    var direccion: String
    var Name: String
    var Availability: Int
    var City: String
}

enum MedicamentError: Error {
    case dataUnavailable
    case cannotProccessData
}

*/
