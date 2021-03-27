//
//  ContentView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI

struct ContentView: View {
    @State var showMainView: Bool = true
    @State var hiragana: Bool = true
    
    var body: some View {
        if showMainView {
            VStack(alignment: .center) {
                    Text("Welcome to Easy Kana")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    Spacer()
                    Text("What would you like to study?")
                        .font(.title)
                        .padding(.vertical)
                Button(action: {
                    self.showMainView = false
                    self.hiragana = true
                })
                {
                    Text("ひらがな - Hiragana")
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                }
                Button(action: {
                    self.showMainView = false
                    self.hiragana = false
                }){
                    Text("カタカナ - Katakana")
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                }
            }
            .padding(.bottom)

        }
        else {
            KanaView(hiragana: self.$hiragana)
            
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
