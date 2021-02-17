//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var isDisplayingOrders:Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
               
                .padding(.trailing)

        }
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
        .overlay(
            Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square" : "chevron.down.square")
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .font(.title)
                .padding()
            ,alignment: .leading
        )
    }
}
    

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
