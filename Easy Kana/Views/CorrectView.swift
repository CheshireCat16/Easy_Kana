//  Shows results when the user is correct. Does not play audio.
//  CorrectView.swift
//  Easy Kana

import SwiftUI

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    var recording: String
    @State var returnHome = false
    let next_kana: Kana
    
    var body: some View {
 
        if (returnHome == true) {
            ContentView()
        }
        
        else if !(show_next) {
            VStack {
                Spacer()
                Text(next_kana.get_kana())
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .frame(height: 150)
                    .overlay(Circle().stroke(Color.green, lineWidth: 8))

                Spacer()
                Button(action: {
                    self.show_next = true
                })
                {
                    Text("Show Next")
                        .font(.title)
                        .padding(.all)
                        .background(Color.green)
                        .foregroundColor(.black)
                        .padding(10)
                        .cornerRadius(40)
                }
            }
        }
        else if (show_hiragana) {
            KanaView(show_hiragana: $show_hiragana, next_kana: get_random_hiragana())
        } else {
            KanaView(show_hiragana: $show_hiragana, next_kana: get_random_katakana())
        }
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView(show_hiragana: .constant(true), recording: "Yes", next_kana: get_random_hiragana())
    }
}

