//
//  Home.swift
//  Tasker WatchKit Extension
//
//  Created by Hamed on 4/15/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        GeometryReader{ reader in
            
            let rect = reader.frame(in: .global)
            VStack(spacing: 15){
                
                HStack(spacing: 25){
                    NavigationLink(
                        destination: AddItem(),
                        label: {
                            NavButton(image: "plus", title: "Memo", rect: rect, color: Color("pink"))
                        }).buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(
                        destination: DeleteMemo(),
                        label: {
                            NavButton(image: "trash", title: "Delete", rect: rect, color: Color("red"))
                        }).buttonStyle(PlainButtonStyle())
                    
                    
                }
                .frame(width: rect.width, alignment: .center)
                
                HStack(spacing: 25){
                    
                    NavigationLink(
                        destination: ViewMemo(),
                        label: {
                            NavButton(image: "doc.plaintext", title: "View", rect: rect, color: Color("blue"))
                        }).buttonStyle(PlainButtonStyle())
                    
                    NavButton(image: "star", title: "Rating", rect: rect, color: Color("orange"))
                    
                }
                .frame(width: rect.width, alignment: .center)
            }
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
