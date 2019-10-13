//
//  NoteImage.swift
//  FlowLayout
//
//  Created by Alfian Losari on 13/10/19.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

#if !os(macOS)
import UIKit
#endif

import SwiftUI

struct NoteImage: Identifiable {
    
    public let id: String
    let title: String
    let description: String
    
    var image: UIImage? {
        return UIImage(named: "image\(id)")!
    }
    
    var aspectRatio: CGFloat? {
        guard let image = image else { return nil }
        return image.size.width / image.size.height
    }
    
    var imageView: some View {
        
        #if os(macOS)
        return Image(nsImage: image!)
            .resizable()
            .aspectRatio(aspectRatio!, contentMode: .fit)
            .padding(.bottom, 8)
            .cornerRadius(8)
        #else
        return Image(uiImage: image!)
            .resizable()
            .aspectRatio(aspectRatio!, contentMode: .fit)
            .padding(.bottom, 8)
            .cornerRadius(8)

        #endif
    }
    
}

extension NoteImage {
    
    static var dummies: [NoteImage] {
        return [
            NoteImage(id: "0", title: "Westminster Church", description: "Waiting for phone call at the booth"),
            NoteImage(id: "1", title: "Buckingham Palace", description: "Standing at the gate of the palace"),
            NoteImage(id: "2", title: "Trafalgar Square", description: "The weather looks nice"),
            NoteImage(id: "3", title: "Deep Blue Lake", description: "Water looks so clean and so fresh for swimming"),
            NoteImage(id: "4", title: "Dessert Valley", description: "Weather is very hot"),
            NoteImage(id: "5", title: "Opera House", description: "Looks grandiose"),
            NoteImage(id: "6", title: "Open Sea", description: "The adventure to become pirate king awaits"),
            NoteImage(id: "7", title: "Lake near the Tower", description: "This palace is so great!"),
            NoteImage(id: "8", title: "Sunset at The Bridge", description: "Enjoying the breeze around the breeze and watching the sunset"),
            NoteImage(id: "9", title: "Gunners Stadium", description: "Once a gunner always a gooner forever"),
            NoteImage(id: "10", title: "The Time Capsule", description: "The end of a long era and the beginning of new era"),
            NoteImage(id: "11", title: "Knight with the horse", description: "Standing near the gate with the knight"),
            NoteImage(id: "12", title: "The national museum", description: "Looking at the long and winding history"),
            NoteImage(id: "13", title: "Thames River", description: "Enjoying the morning weather and looking all the boats and the wheel"),
            NoteImage(id: "14", title: "The Emirates", description: "Together we can change the world"),
            NoteImage(id: "15", title: "The Harrods", description: "Ready for shopping!")
            
        ]
    }
}
