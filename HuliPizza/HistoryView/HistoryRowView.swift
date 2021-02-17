//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment:.top) {
            Image("1_100w")
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: Color.black.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
            Text("Huli Chicken")
                .font(.title)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("G3"))
            ,alignment: .trailing
        )
    }
}


struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
