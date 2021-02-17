//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack{
            OrderTitleView()
            List(0..<5){ item in
                OrderRowView()
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}


