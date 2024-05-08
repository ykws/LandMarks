//
//  ContentView.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/11/23.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI

// TODO: 仮置き
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
