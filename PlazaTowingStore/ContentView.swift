//
//  ContentView.swift
//  PlazaTowingStore
//
//  Created by Andrew L Perkins on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Current Inventory")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Plaza Hat"),
                    label: {
                        Text("Plaza Hat")
                    }
                )
                Spacer()
            }
            .navigationTitle(Text("Plaza Towing Store"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
