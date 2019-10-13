//
//  ContentView.swift
//  watchOSStaggeredNote WatchKit Extension
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import SwiftUI
import StaggeredList

struct ContentView: View {
    
    let notes: [NoteImage] = NoteImage.dummies.shuffled()
    @State var numberOfColumns = 1
    var spacing: CGFloat = 8
    var sectionInset = EdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
    var body: some View {
        VStack {
            StaggeredLayoutList(data: self.notes, numberOfColumns: self.numberOfColumns, horizontalSpacing: self.spacing, verticalSpacing: self.spacing, sectionInsets: sectionInset) {
                NoteView(note: $0)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

