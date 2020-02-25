//
//  ScrollerView.swift
//  lektion-6-live
//
//  Created by Dennis Sørensen on 25/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ScrollerView: View {
    
    let banditter = Sluppert.slupperter
    
    var body: some View {
        
        List{
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack{
                    ForEach(banditter) { slippert in
                        SluppertView()
                    }.padding()
                    
                }
            }
            
        ForEach(0..<10) {tal in
            Text("\(tal)")
            
        
            
            }}
    }
}

struct ScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollerView()
    }
}
