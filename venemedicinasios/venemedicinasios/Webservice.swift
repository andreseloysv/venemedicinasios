//
//  Webservice.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 14.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//

import Foundation

class Webservice {
    func getPosts(searchTerm: String,completion: @escaping ([Post]?) -> ()) {
        
        guard let url = URL(string: "https://venemedicinasserver.herokuapp.com/getMedicin?name="+searchTerm) else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
            
        }.resume()
        
    }
    
}
