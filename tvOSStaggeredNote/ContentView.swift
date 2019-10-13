//
//  ContentView.swift
//  watchOSStaggeredNote
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import SwiftUI
import StaggeredList

struct ContentView: View {
    
    let notes: [NoteImage] = NoteImage.dummies.shuffled()
    @State var numberOfColumns = 6
    var spacing: CGFloat = 16
    var sectionInset = EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    var body: some View {
        
        
        VStack {
            Text("tvOS SwiftUI Staggered Note")
                .font(.title)
            StaggeredLayoutList(data: self.notes, numberOfColumns: self.numberOfColumns, horizontalSpacing: self.spacing, verticalSpacing: self.spacing, sectionInsets: sectionInset) {
                NoteView(note: $0)
                .focusable()
            }
            
            
        
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

