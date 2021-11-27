//
//  DetailView.swift
//  Stretch+Paws
//
//  Created by Thomas Stubblefield on 11/25/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color("Secondary").ignoresSafeArea()
            Text("Purrrfect")
                .font(.title)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
