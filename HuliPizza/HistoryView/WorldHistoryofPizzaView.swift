//
//  WorldHistoryofPizzaView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct WorldHistoryofPizzaView: View {
    @State var imageID:Int = 0
    var body: some View {
        VStack {
            ContentHeaderView()
            TitlePizzaHistoryView()
            SelectedImageView(image: "\(imageID)_250w")
            HistoryListView(imageID: $imageID)
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

