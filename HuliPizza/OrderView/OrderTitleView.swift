//
//  OrderTitleView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct OrderTitleView: View {
    var body: some View {
        HStack {
            Text("Your Order")
                .font(.title3)
                .padding(.leading, 5)
                
            Spacer()
        }.background(Color("G4"))
        .foregroundColor(Color("G2"))
    }
}


struct OrderTitleView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTitleView()
    }
}
