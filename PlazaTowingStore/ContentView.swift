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
                Text("Cars Clearing Lien")
                    .font(.title)
                    .padding()
                Spacer()
                NavigationLink(
                    destination: ItemDetailView(itemName: "2011 Cadillac Escalade"),
                    label: {
                        Text("2011 Cadillac Escalade")
                    }
                )
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
