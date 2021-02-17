//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Kevin Kan on 17/2/2021.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack (alignment:.top, spacing: 15){
                Image("\(menuItem.id)_100w")
    //                .border(Color("G4"), width:4 ) //the order matters!!!
    //                .cornerRadius(10) // corner radius has to put in front of shadow
                    
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                VStack (alignment: .leading){
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
//                Spacer()
            }
            Text(menuItem.description)
        }
    }
}


struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[1])
    }
}

