//
//  NetworkingManager.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 12.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//
/*
import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    /*
    var didChange = PassthroughSubject<NetworkingManager, Never>()
    var venemedicinasList = VenemedicinasApiList(from: data) {
        didSet {
            didChange.send(self)
        }
    }
    init() {
        guard let url = URL(string: "https://venemedicinasserver.herokuapp.com/getMedicin?name=atamel") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let venemedicinasList = try! JSONDecoder().decode(VenemedicinasApiList.self, from: data)
            
            DispatchQueue.main.async {
                self.venemedicinasList = venemedicinasList
            }
        }.resume()
    }*/
}
*/
