//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct HistoryListView: View {

    var historyModel = HistoryModel()
    @Binding var imageID : Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems){ item in
                NavigationLink(
                    destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)
                ){
                    
                HistoryRowView(historyItem:item)
                }
            }
        }.navigationBarTitle("Pizza History")
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID:.constant(0))
    }
}


