//
//  TabBarView.swift
//  hotelApp
//
//  Created by TANMOY ROY on 19/02/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    @State private var showCreateThreadView = false
    var body: some View {
        TabView(selection: $selectedTab){
            
            Text("book").tabItem {
                Image(systemName: selectedTab == 0 ? "suitcase.fill" : "suitcase")
                    .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
            }.onAppear{selectedTab = 0}.tag(0)
            
            Text("book").tabItem {
                Image(systemName: selectedTab == 1 ? "airplane.fill" : "airplane")
                    .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
            }.onAppear{selectedTab = 1}.tag(1)
            
            Text("discover").tabItem {
                Image(systemName: selectedTab == 2 ? "binoculars.fill" : "binoculars")
                    .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
            }.onAppear{selectedTab = 2}.tag(2)
            
            Text("tips").tabItem {
                Image(systemName: selectedTab == 3 ? "info.circle.fill" : "info.circle")
                    .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
            }.onAppear{selectedTab = 3}.tag(3)
            
            Text("Explore").tabItem {
                Image(systemName: "magnifyingglass")
            }.onAppear{selectedTab = 4}.tag(4)
            
            
            
            Text("profile").tabItem {
                Image(systemName: selectedTab == 5 ? "person.fill" : "person")
                    .environment(\.symbolVariants, selectedTab == 5 ? .fill : .none)
            }.onAppear{selectedTab = 5}.tag(5)
            
            
            
        }.accentColor(.black)
            .onChange(of: selectedTab, perform: {newValue in
                showCreateThreadView = selectedTab == 2
            })
            .sheet(isPresented: $showCreateThreadView,onDismiss: {selectedTab=0}, content: {
                //CreateThreadView()
            })
    }
}

#Preview {
    TabBarView()
}
