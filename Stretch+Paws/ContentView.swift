//
//  ContentView.swift
//  Stretch+Paws
//
//  Created by Thomas Stubblefield on 11/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
         List {
             NavigationLink(destination: DetailView()) {
                 Text("Downward-facing Dog")
             }
            Text("Standard Forward Fold")
            Text("Tree Pose")
         }.listStyle(.grouped)
        .navigationTitle("Stretch + Paws")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
