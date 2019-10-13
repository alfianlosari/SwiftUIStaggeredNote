//
//  ContentView.swift
//  iOSStaggeredNote
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import SwiftUI
import StaggeredList

struct ContentView: View {
    
    let notes: [NoteImage] = NoteImage.dummies.shuffled()
    @State var numberOfColumns = 2
    var spacing: CGFloat = 8
    var sectionInset = EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
    var body: some View {
        NavigationView {
            
            VStack {
                StaggeredLayoutList(data: self.notes, numberOfColumns: self.numberOfColumns, horizontalSpacing: self.spacing, verticalSpacing: self.spacing, sectionInsets: sectionInset) {
                    NoteView(note: $0)
                }
                
                
                HStack {
                    Stepper("Columns: \(Int(numberOfColumns))", value: self.$numberOfColumns, in: 1...3)
                    
                }
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
            }
                
            .navigationBarTitle("iOS SwiftUI Staggered List")
        }
    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
