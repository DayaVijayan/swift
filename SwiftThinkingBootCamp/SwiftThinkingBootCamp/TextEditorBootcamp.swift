//
//  TextEditorBootcamp.swift
//  SwiftThinkingBootCamp
//
//  Created by daya vijayan on 30/10/23.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText : String = "ello"
    @State var savedText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text:$textEditorText)
                    .frame(height:250)
                    .colorMultiply(.gray)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                })
                Text(savedText)
                Spacer()
            }.padding()
            .navigationTitle("Text Editor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
