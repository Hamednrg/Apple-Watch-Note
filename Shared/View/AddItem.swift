//
//  AddItem.swift
//  Tasker WatchKit Extension
//
//  Created by Hamed on 4/15/21.
//

import SwiftUI

struct AddItem: View {
    @State var memoText = ""
    
    @Environment(\.managedObjectContext) var context
    @Environment(\.presentationMode) var presentation
    
    var memoItem: Memo?
    
    var body: some View {
        VStack(spacing: 15){
            TextField("Memories....", text: $memoText)
            
            Button(action: addMemo, label: {
                Text("Save")
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, alignment:.center)
                    .background(Color("orange"))
                    .cornerRadius(15)
            })
            .padding(.horizontal)
            .buttonStyle(PlainButtonStyle())
            .disabled(memoText == "")
        }
        .navigationTitle("\(memoItem == nil ? "Add Memo" : "Update")")
        .onAppear(perform: {
            if let memo = memoItem{
                memoText = memo.title ?? ""
            }
        })
    }
    func addMemo(){
        let memo = memoItem == nil ? Memo(context: context) : memoItem!
        
        memo.title = memoText
        memo.dateAdded = Date()
        
        do{
            try context.save()
            presentation.wrappedValue.dismiss()
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
}

struct AddItem_Previews: PreviewProvider {
    static var previews: some View {
        AddItem()
    }
}
