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

        /*ScrollView {

            HStack(alignment: .top){
                
                VStack(alignment: .center){
        
                    Text("Venemedicinas")
                    TextField("Atamel caracas", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Button(action: {}) {
                        Text("Buscar")
                    }*/
                    List(networkingManager.venemedicinasList, id: \.self.Id) {
                        medicamento in
                        
                        Text(medicamento.Description)
                    }
                    /*
                }
                .padding(.leading)
            }
        }*/
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
