//
//  TitlePizzaHistoryView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct TitlePizzaHistoryView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Pizza History")
                .bold()
                .font(.title)
                .padding(.trailing, 5)
            
        }
        .background(Color("G4"))
        .foregroundColor(Color("G2"))
    }
}

struct TitlePizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        TitlePizzaHistoryView()
    }
}
