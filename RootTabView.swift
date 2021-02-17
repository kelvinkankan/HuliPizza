//
//  RootTabView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            ContentView(ordermodel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            WorldHistoryofPizzaView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Order")
                }
            
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
            .environmentObject(UserPreferences())
        
    }
}
