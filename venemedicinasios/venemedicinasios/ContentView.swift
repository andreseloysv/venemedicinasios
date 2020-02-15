//
//  ContentView.swift
//  venemedicinasios
//
//  Created by Andres Sanchez Vargas on 11.02.20.
//  Copyright © 2020 venemedicinas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var searchTerm: String = ""
    @ObservedObject var postListVM = PostListViewModel()
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top){
                    VStack(){
                        TextField("Atamel caracas", text: $searchTerm).padding(.vertical).padding(.leading)
                            .border(Color.gray, width: 0.3)
                        Button(action: {self.searchMedicament(postListVM: self.postListVM, searchTerm: self.searchTerm)}) {
                            Text("Buscar").fontWeight(.semibold)
                            .font(.title)
                        }
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color("LightGreen"))
                        .cornerRadius(8)
                        
                        List(self.postListVM.posts, id: \.Id) { post in
                            NavigationLink(destination:MedicamentDetail(post: post)) {
                                MedicamentRow(post: post)
                            }
                        }
                        
                    }.padding()
                        .navigationBarTitle(Text("Venemedicinas").font(.title), displayMode: .inline)
                    .background(NavigationConfigurator { nc in
                        nc.navigationBar.barTintColor = UIColor(hex: "#fd0000ff")
                        nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                    })
                }
            }
        }
    }
    func searchMedicament(postListVM:PostListViewModel, searchTerm: String) -> Void{
        let searchTermEncode = searchTerm.replacingOccurrences(of: " ", with: "%20")
        postListVM.searchMedicament(searchTerm: searchTermEncode)
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
