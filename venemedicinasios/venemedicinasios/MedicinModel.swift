//
//  MedicinModel.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 14.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var posts = [PostViewModel]()
    
    func searchMedicament(searchTerm: String) {
        Webservice().getPosts(searchTerm: searchTerm) { posts in
            
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
            }
        }
        
    }
    
}

struct PostViewModel {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var Id: String {
        return self.post.Id
    }
    
    var Description: String {
        return self.post.Description
    }
    
    var ActiveIngredient: String {
        return self.post.ActiveIngredient
    }
    
    var variant: [Variant] {
        return self.post.variant
    }
    
}

struct Post: Codable {
    let Id: String
    let Description: String
    let ActiveIngredient: String
    let variant: [Variant]
}

struct Variant: Codable {
    let Id: String
    let direccion: String
    let Name: String
}
