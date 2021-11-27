//
//  ContentView.swift
//  Stretch+Paws
//
//  Created by Thomas Stubblefield on 11/22/21.
//

import SwiftUI

struct ContentView: View {
// This is a little glance at what the code used to look like
    init() {
        UITableView.appearance().backgroundColor = UIColor(named:"Secondary")
    }
    let poses = Poses()
    var body: some View {
        NavigationView {
            List(poses.poseData) { pose in
             NavigationLink(destination: DetailView()) {
                 Image(pose.icon)
                     .resizable()
                     .frame(width: 60, height: 60)
                 Text(pose.name)
                     .fontWeight(.medium)
                     .font(.title3)
                     .padding(.leading, 20)
             }
             .padding(5)
             .listRowBackground(Color("Secondary"))
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
