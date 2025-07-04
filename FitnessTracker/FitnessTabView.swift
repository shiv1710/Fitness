//
//  FitnessTabView.swift
//  FitnessTracker
//
//  Created by Shiv Patel on 02/12/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init(){
        let appearance  = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "house")
                }
            
            HistoricView()
                .tag("Historic")
                .tabItem{
                    Image(systemName: "chart.xyaxis.line" )
                    
                    Text("Charts")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
