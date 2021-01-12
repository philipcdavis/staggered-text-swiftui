//
//  ContentView.swift
//  StaggeredText
//
//  Created by Philip Davis on 1/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShown: Bool = true
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                Spacer()
                Text("Transcribe Videos")
                    .font(Font.largeTitle.bold())
                    .offset(x: 0, y: isShown ? 0 : 75)
                    .opacity(isShown ? 1 : 0)
                    .padding(4)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .animation(Animation.easeOut.delay(isShown ? 0.1 : 0.2))
                
                Text("Share Ideas")
                    .font(Font.largeTitle.bold())
                    .offset(x: 0, y: isShown ? 0 : 75)
                    .opacity(isShown ? 1 : 0)
                    .padding(4)
                    .foregroundColor(.purple)
                    .animation(Animation.easeOut.delay(0.15))
                
                Text("Remix Everything")
                    .font(Font.largeTitle.bold())
                    .offset(x: 0, y: isShown ? 0 : 75)
                    .opacity(isShown ? 1 : 0)
                    .padding(4)
                    .foregroundColor(.red)
                    .animation(Animation.easeOut.delay(isShown ? 0.2 : 0.1))
                
                Spacer()
                Button(action: {
                    isShown.toggle()
                }) {
                    Text(isShown ? "Hide" : "Show")
                }
            }
            Spacer()
        }.padding(16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
