//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline){
                Text(orderItem.description)
                    .font(.headline)
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                    .bold()
            }
            Text(orderItem.comments)
        }
    }
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory,.accessibilityExtraExtraLarge)
    }
}
