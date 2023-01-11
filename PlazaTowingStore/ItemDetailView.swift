//
//  ItemDetailView.swift
//  PlazaTowingStore
//
//  Created by Andrew L Perkins on 1/10/23.
//

import SwiftUI

struct ItemDetailView: View {
    let itemName: String
    
    var body: some View {
        VStack {
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            Text("Release Date: 01/23/2023")
            Spacer()
            Button {
                print("Button tapped")
            } label: {
                Text("Get quote")
            }
            Spacer()
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "2011 Cadillac Escalade")
    }
}
