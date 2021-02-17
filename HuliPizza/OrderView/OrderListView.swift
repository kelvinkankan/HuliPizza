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
            List{
                Section (
                    header:ListHeaderView(ordermodel: ordermodel, menuName: "Your Order")
                ){
                    ForEach(ordermodel.orders){item in
                        OrderRowView(orderItem:item)
                    }
                    .onDelete(perform: delete)
                }
                }
            }
    }
    func delete(at offsets:IndexSet){
        ordermodel.orders.remove(atOffsets: offsets)
    }
}
struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(ordermodel: OrderModel())
    }
}


