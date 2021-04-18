//  Shows results when the user is correct. Does not play audio.
//  CorrectView.swift
//  Easy Kana

import SwiftUI

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    @Binding var recording: String
    @Binding var next_kana: Kana
    @Binding var recordingFinished: Bool
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
                    if (show_hiragana) {
                        next_kana = get_random_hiragana()
                    } else {
                        next_kana = get_random_katakana()
                    }
                    recording = ""
                    recordingFinished = false
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
        else {
            KanaView(show_hiragana: $show_hiragana, next_kana: $next_kana)
        }
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView(show_hiragana: .constant(true), recording: .constant("Yes"), next_kana: .constant(get_random_hiragana()), recordingFinished: .constant(true))
    }
}

