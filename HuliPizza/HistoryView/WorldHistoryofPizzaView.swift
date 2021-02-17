//
//  WorldHistoryofPizzaView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct WorldHistoryofPizzaView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            TitlePizzaHistoryView()
            HistoryListView()
        }
    }
}

struct WorldHistoryofPizzaView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            WorldHistoryofPizzaView()
            WorldHistoryofPizzaView().colorScheme(.dark).background(Color.black)
        }
    }
}

