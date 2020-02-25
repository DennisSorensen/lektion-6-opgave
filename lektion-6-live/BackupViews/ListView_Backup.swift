//
//  ListView_Backup.swift
//  lektion-6-live
//
//  Created by Dennis Sørensen on 25/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ListView_Backup: View {
    var body: some View {
        List (0..<5) { tal in
                    //Hvis datamodellen overholder identifiable kan man slette keypath
        //            ForEach(banditter) { sluppert in
        //                HStack {
        //                    Text(sluppert.navn)
        //                    Spacer()
        //                    SluppertView()
        //                }.padding()
        //
        //            }
                    HStack {
                    Text("\(tal)").font(.title)
                        Spacer()
                        Button("KLIK MIG") {
                            print("Klikket på nummer: \(tal)") }.padding().background(Color("Kapitalist")).foregroundColor(.white)
                    }
                }
    }
}

struct ListView_Backup_Previews: PreviewProvider {
    static var previews: some View {
        ListView_Backup()
    }
}
