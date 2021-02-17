//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Text("Your Order Item Here")
                .font(.headline)
            Spacer()
            Text("$0.00")
                .bold()
        }
    }
}


struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
            .environment(\.sizeCategory,.accessibilityExtraExtraLarge)
    }
}
