//  Shows results when the user is correct. Does not play audio.
//  CorrectView.swift
//  Easy Kana

import SwiftUI

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    var recording: String
    @State var returnHome = false
    
    var body: some View {
 
        if (returnHome == true) {
            ContentView()
        }
        
        else if !(show_next) {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.returnHome = true
                        self.show_next = true
                    }) {
                        Text("X")
                            .font(.title)
                            .foregroundColor(Color.gray)
                            .padding(.horizontal)
                            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
                            .padding(.top, 10)
                    }
                }
                Spacer()
                Text(last_kana.get_kana())
                    .font(.system(size: 100))
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
        else {
            KanaView(show_hiragana: $show_hiragana)
        }
    }
}

struct CorrectView_Previews: PreviewProvider {
    static var previews: some View {
        CorrectView(show_hiragana: .constant(true), recording: "Yes")
    }
}

