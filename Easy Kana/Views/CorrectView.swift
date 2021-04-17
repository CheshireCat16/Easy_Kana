//  Shows results when the user is correct. Does not play audio.
//  CorrectView.swift
//  Easy Kana

import SwiftUI

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    var recording: String
    let next_kana: Kana
    @Environment(\.presentationMode) private var presentation
    
    var body: some View {
        if !(show_next) {
            VStack {
                Spacer()
                Text(next_kana.get_kana())
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.all)
                    .overlay(Rectangle().stroke(Color.green, lineWidth: 8))

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
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: { presentation.wrappedValue.dismiss() }) { Image(systemName: "chevron.left")
                .padding(.leading)
                .font(.system(.title2))
                .accentColor(.gray)
            })
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

