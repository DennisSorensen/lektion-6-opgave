//
//  ForEach_Backup.swift
//  lektion-6-live
//
//  Created by Dennis Sørensen on 25/02/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct ForEach_Backup: View {
    var body: some View {
        VStack{
        ForEach (0..<50) { tal in
            Text("\(tal)")
        }.font(.title)
            
        }
    }
}

struct ForEach_Backup_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_Backup()
    }
}
