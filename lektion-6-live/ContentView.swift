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
    
    @State private var valgtKandidatIndex = 0 //State indikerer at man har en tilstand man vil gemme, altså den kan ændre sig der hvor man arbejder med den. Hvis den ændre sig så ændre den sig alle andre steder også.
    //State gør at der bliver gemt en reference, sådan man kan ændre den uden at skrive mutating.
    @State private var donationsBelobText = ""
    @State private var stemmerPaaKandidat = false
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $valgtKandidatIndex, label: Text("Vælg kandidat")) {
                        ForEach(0..<self.banditter.count) {
                            banditIndex in
                            Text(self.banditter[banditIndex].navn)
                        }
                    }
                    
                }
                Section {
                    //Felt til at taste et beløb i
                    TextField("Indtast beløb", text: $donationsBelobText).keyboardType(.decimalPad)
                    HStack {
                    Image("Donald").resizable().frame(width:25, height: 25)
                        Text("Sluppert")
                    }
                }
                
                if !self.donationsBelobText.isEmpty {
                Section {
                    Toggle(isOn: $stemmerPaaKandidat) {
                        Text("Stemmer på kandidaten")
                    }
                    
                }
                }
                Section {
                    Button("Betal \(donationsBelobText) nu") {
                        print("Kandidaten siger tak")
                    }
                }
            }.navigationBarTitle("Støt valgkampen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
