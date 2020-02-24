//
//  ContentView.swift
//  lektion-5-live
//
//  Created by Henrik Gregersen on 11/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //Model til slupperter
    let banditter = Sluppert.slupperter
    
    
    var body: some View {
        VStack {
            //Hvis datamodellen overholder identifiable kan man slette keypath
//            ForEach(banditter) { sluppert in
//                HStack {
//                    Text(sluppert.navn)
//                    Spacer()
//                    SluppertView()
//                }.padding()
//
//            }
            
            ForEach (0..<50) { tal in
                Text("\(tal)")
            }.font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
