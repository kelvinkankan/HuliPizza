//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var ordermodel:OrderModel
    var menuName: String
    var body: some View {
        HStack {
            Text(menuName)
                .font(.title3)
                .padding(.leading, 5)
                .foregroundColor(Color("G2"))
                
            Spacer()
            Text(ordermodel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .foregroundColor(Color("IP"))
        .font(.headline)
        .background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(ordermodel:OrderModel(), menuName: "Menu")
    }
}
