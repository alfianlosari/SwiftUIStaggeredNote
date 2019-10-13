//
//  NoteView.swift
//  StaggeredNoteCrossPlatformApp
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import SwiftUI

struct NoteView: View {
    
    let note: NoteImage
    var body: some View {
        VStack(alignment: .leading) {
            if (note.image != nil) {
                note.imageView
            }
            
            Text(note.title)
                .font(.headline)
                .lineLimit(3)
                .padding(.leading, 8)
                .padding(.trailing, 8)
                .padding(.bottom, 4)
            
            
            Text(note.description)
                .font(.body)
                .lineLimit(6)
                .padding(.leading, 8)
                .padding(.trailing, 8)
                .padding(.bottom, 8)
            
        }
            
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.secondary, lineWidth: 1)
        )
    }
}
