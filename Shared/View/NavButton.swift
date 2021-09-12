//
//  NavButton.swift
//  Tasker WatchKit Extension
//
//  Created by Hamed on 4/15/21.
//

import SwiftUI

struct NavButton: View {
    var image: String
    var title: String
    var rect: CGRect
    var color: Color
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: image)
                .font(.title2)
                .frame(width: rect.width/3, height: rect.height/3, alignment: .center)
                .background(color)
                .clipShape(Circle())
            Text(title)
                .font(.system(size: 10))
                .foregroundColor(.white)
        }
    }
}
