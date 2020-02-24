//
//  ContentView.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: GreatView()) {
                DonaldView()
            }.buttonStyle(PlainButtonStyle())
            .navigationBarTitle("Vote America")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
