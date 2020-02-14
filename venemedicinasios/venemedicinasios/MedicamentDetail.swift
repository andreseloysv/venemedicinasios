
//
//  MedicamentDetails.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 14.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//


import SwiftUI

struct MedicamentDetail: View {
    var post: Post
    
    var body: some View {
        VStack() {
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
        }
    }
}
/*
struct MedicamentDetail_Preview: PreviewProvider {
    static var previews: some View {
        MedicamentDetail(medicament: <#Post#>)
    }
}
*/
