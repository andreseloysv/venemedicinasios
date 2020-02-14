//
//  ContentView.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 11.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var searchTerm: String = "Tim"
    @ObservedObject private var postListVM = PostListViewModel()
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top){
                    VStack(){
                        
                        TextField("Atamel caracas", text: $searchTerm).padding(.vertical).padding(.leading)
                        Button(action: {}) {
                            Text("Buscar")
                        }
                        
                        List(self.postListVM.posts, id: \.Id) { post in
                            NavigationLink(destination:         VStack() {
                                VStack(alignment: .leading) {
                                    Text(post.Description)
                                        .font(.title)
                                    List(post.variant, id: \.Name) { variante in
                                        VStack(alignment: .leading) {
                                            Text(variante.Name).font(.subheadline)
                                            Text(variante.direccion).font(.subheadline)
                                            Spacer()
                                        }
                                    }
                                }
                                .padding()
                                Spacer()
                            }) {
                                VStack(alignment: .leading) {
                                    Text(post.Description).font(.title)
                                    Text(post.ActiveIngredient)
                                    Spacer()
                                }
                            }
                        }
                        
                    }.navigationBarTitle(Text("Venemedicinas"), displayMode: .inline)
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
