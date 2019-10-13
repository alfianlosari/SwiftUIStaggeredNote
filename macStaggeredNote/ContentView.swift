//
//  ContentView.swift
//  macStaggeredNote
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import SwiftUI
import StaggeredList

struct ContentView: View {
    
    let notes: [NoteImage] = NoteImage.dummies.shuffled()
    var spacing: CGFloat = 16
    var sectionInset = EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
    
    func numberOfColumns(containerSize: CGSize) -> Int {
        return Int(containerSize.width / 240)
    }
    
    var body: some View {
        
        GeometryReader { proxy in
            VStack {
                Text("macOS SwiftUI Staggered Note")
                    .font(.title)
                    .padding(.top, 8)
                StaggeredLayoutList(data: self.notes, numberOfColumns: self.numberOfColumns(containerSize: proxy.size), horizontalSpacing: self.spacing, verticalSpacing: self.spacing, sectionInsets: self.sectionInset) {
                    NoteView(note: $0)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
