//  ContentView shows the initial screen and process user input
//  to move to the next screen.
//
//  ContentView.swift
//  Easy Kana

import SwiftUI

struct ContentView: View {
    // Used to keep track of the current view - main or kana study
    @State var showMainView: Bool = true
    // Used to track whether selected study is hiragana or katakana
    @State var show_hiragana: Bool = true
    
    var body: some View {
        // Shows the main page if showMainView is true
        if showMainView {
            VStack(alignment: .center) {
                Text("Welcome to Easy Kana")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                Spacer()
                Text("Easy\nカナ")
                        .font(.system(size: 100))
                Spacer()
                Text("What would you like to study?")
                        .font(.title)
                        .padding(.vertical)
                NavigationView {
                
                        Button(action: {
                        self.showMainView = false
                        self.show_hiragana = true
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
                        self.show_hiragana = false
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
            }
            .padding(.bottom)
        }
        // Shows KanaView with the appropriate kana type
        else {
            KanaView(show_hiragana: self.$show_hiragana)
        }
    }
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
