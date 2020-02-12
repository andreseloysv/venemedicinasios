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
import Foundation

struct VenemedicinasApiList: Decodable {
    var result: [VenemedicinasListEntry]
}

struct VenemedicinasListEntry: Decodable {
    var Id: String
    var ActiveIngredient: String
    var Description: String
    var variant: [Variant]
}

struct Variant: Decodable {
    var direccion: String
    var Name: String
    var Availability: String
    var City: String
}
