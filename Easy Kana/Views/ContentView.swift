//  ContentView shows the initial screen and process user input
//  to move to the next screen.
//
//  ContentView.swift
//  Easy Kana

import SwiftUI

struct ContentView: View {
    @Binding var next_kana: Kana
    var body: some View {
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

            NavigationLink(
                destination: KanaView(show_hiragana: .constant(true)),
                label: {
                    Text("ひらがな - Hiragana")
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                })
            
            NavigationLink(
                destination: KanaView(show_hiragana: .constant(false)),
                label: {
                    Text("カタカナ - Katakana")
                        .font(.title)
                        .padding(.all)
                        .background(Color.red)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                })
        .padding(.bottom)
        }
    }

}   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(next_kana: .constant(get_random_hiragana()))
        }
    }
}
