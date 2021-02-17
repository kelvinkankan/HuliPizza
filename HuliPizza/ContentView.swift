//
//  ContentView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var ordermodel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action:{self.isMenuDisplayed.toggle() }){
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
           
            MenuListView(ordermodel: ordermodel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
//                .padding(.top)
            OrderListView(ordermodel: ordermodel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            
            //Spacer()
            
        }
        .animation(.spring())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(ordermodel: OrderModel())
            .environmentObject(UserPreferences())
           // .environment(\.sizeCategory,.accessibilityExtraExtraLarge)
        ContentView(ordermodel: OrderModel())
            .environmentObject(UserPreferences())
            .colorScheme(.dark)
            .background(Color.black)
            .previewDevice("iPhone 12 Pro Max")
        ContentView(ordermodel: OrderModel())
            .colorScheme(.dark)
            .background(Color.black)
            .previewDevice("iPad Pro (9.7-inch)")
    }
}
