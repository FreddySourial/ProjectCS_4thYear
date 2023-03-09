//
//  NavBarView.swift
//  ProjectCS_4thYear
//
//  Created by Freddy Sourial on 2023-03-08.
//

import SwiftUI



struct NavBarView: View {
    var body: some View {
           NavigationView {
               HStack {
                   NavigationLink(
                       destination: historyView()) {
                                          Text("History")
                                      }
                   NavigationLink(
                       destination: myProfileView()) {
                                          Text("Profile")
                                      }
                   NavigationLink(
                       destination: viewView()) {
                                          Text("Map")
                                      }
                   NavigationLink(
                       destination: BLE()) {
                                          Text("View4")
                                      }
               }
               .navigationBarTitle("Horizontal Menu")
           } .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
       }
   }

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}




////
////  NavBarView.swift
////  ProjectCS_4thYear
////
////  Created by Freddy Sourial on 2023-03-08.
////
//
//import SwiftUI
//
//struct NavBarView: View {
//    let menuItems = ["Home", "About", "Contact"]
//
//    var body: some View {
//        NavigationView {
//            LazyHStack(spacing: 20) {
//                ForEach(menuItems, id: \.self) { item in
//                    NavigationLink(
//                        destination: Text(item),
//                        label: {
//                            Text(item)
//                                .foregroundColor(.white)
//                                .padding(.vertical, 10)
//                                .padding(.horizontal, 20)
//                                .background(Color.blue)
//                                .cornerRadius(10)
//                        })
//                }
//            }
//            .padding(.horizontal, 10)
//            .navigationTitle("NavBarView")
//        }
//    }
//}
//struct NavBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavBarView()
//    }
//}
