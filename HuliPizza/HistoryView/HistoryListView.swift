//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct HistoryListView: View {
    var body: some View {
        List(0..<4){ item in
            
            HistoryRowView()
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}


