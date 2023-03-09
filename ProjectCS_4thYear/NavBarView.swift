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
            Text("Welcome to NavBarView!")
                .navigationTitle("NavBarView")
        }
    }
}
struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
