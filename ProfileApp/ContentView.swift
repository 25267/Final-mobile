//
//  ContentView.swift
//  ProfileApp
//
//  Created by Zhanibek on 15.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 3
    init() {
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    var body: some View {
        TabView(selection: $tabIndex) {
            
            Color("Background 2")
                .edgesIgnoringSafeArea(.top)
                .tabItem{
                    Image(systemName: "house")
                }
                .tag(1)
            
            
            Color("Background 2")
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "cube")
                }
                .tag(2)
            
            
            ProfileVIew()
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(3)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
