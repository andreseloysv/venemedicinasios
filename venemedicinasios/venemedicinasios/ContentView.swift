//
//  ContentView.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 11.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var networkingManager = NetworkingManager()
    var body: some View {
/*
        ScrollView {

            HStack(alignment: .top){
                
                VStack(alignment: .center){
        
                    Text("Venemedicinas")
                    TextField("Atamel caracas", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Button(action: {hola()}) {
                        Text("Buscar")
                    }*/
                    List(networkingManager.venemedicinasList, id: \.self.Id) {
                        medicamento in
                        Text(medicamento.Description)
                    }
                /*}
                .padding(.leading)
            }
        }*/
    }
}
func hola(){
    print("Hello Swift")
    let notesEndpoint = URL(string: "https://venemedicinasserver.herokuapp.com/getMedicin?name=atamel")!
    let request = URLRequest(url: notesEndpoint)
    let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
        guard let data = data, let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? [String: Any], let notes = json["notes"] as? String else {
            return
        }
        print("call back")
        print(data)
        DispatchQueue.main.async(execute: {
            print(notes)
        })
    })
    task.resume()
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
