//
//  ItemDetailView.swift
//  PlazaTowingStore
//
//  Created by Andrew L Perkins on 1/10/23.
//

import SwiftUI

struct ItemDetailView: View {
    @State var quantityRemaining = Int.random(in: 1...10)
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
            Text("Quantity Remaining: \(quantityRemaining)")
            Spacer()
            Button {
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add to Cart")
            }
            Spacer()
        }
        .background(
            NavigationLink(destination: Text("You bought all the \(itemName)!"),
                           isActive: .constant(quantityRemaining == 0),
                           label: { EmptyView() })
        )
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Plaza Hat")
    }
}
