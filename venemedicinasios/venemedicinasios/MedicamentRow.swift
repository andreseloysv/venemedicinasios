//
//  MedicamentRow.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 14.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//


import SwiftUI

struct MedicamentRow: View {
    var post: PostViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text(post.Description).font(.title)
            Text(post.ActiveIngredient)
            Spacer()
        }
    }
}
