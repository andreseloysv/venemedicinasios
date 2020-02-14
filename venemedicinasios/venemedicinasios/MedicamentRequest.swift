//
//  MedicamentRequest.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 13.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//
/*
import Foundation

struct MedicamentRequest  {
    let requestUrl: URL
    
    init() {
        self.requestUrl = URL(string: "https://venemedicinasserver.herokuapp.com/getMedicin.php?name=atamel%20porlamar")!
    }
    
    func getMedicaments(completionHandler: @escaping(Result<[VenemedicinasListEntry], MedicamentError>) -> Void) {
        URLSession.shared.dataTask(with: self.requestUrl) { (data, response, error) in
            guard let data = data else {
                completionHandler(.failure(.dataUnavailable))
                return
            }
            
            do {
                let medicamentResponse = try JSONDecoder().decode(MedicamentResponse.self, from: data)
                completionHandler(.success(medicamentResponse.venemedicinasList))
            }
            catch {
                completionHandler(.failure(.cannotProccessData))
            }
        }.resume()
    }
}
*/
