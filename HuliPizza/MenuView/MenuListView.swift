//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var ordermodel: OrderModel
    var menuList = MenuModel().menu
    var body: some View {
        VStack{
            ListHeaderView(ordermodel: ordermodel, menuName: "Menu")
            NavigationView{
                List(menuList){ item in
                    
                    NavigationLink(destination:MenuDetailView(ordermodel:self.ordermodel, menuItem:item)){
                        MenuRowView(menuItem: item)
                            .listRowInsets(EdgeInsets())
                    }
                }
            .navigationBarTitle("Pizza Order")
            }
        }
        
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(ordermodel:OrderModel())
    }
}


