//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct OrderListView: View {
    var ordermodel: OrderModel
    var body: some View {
        VStack{
            OrderTitleView()
            List(ordermodel.orders){ item in
                OrderRowView(orderItem:item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(ordermodel: OrderModel())
    }
}


