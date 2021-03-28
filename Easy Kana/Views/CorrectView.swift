//
//  CorrectView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI

struct CorrectView: View {
    @Binding var show_hiragana: Bool
    @State var show_next: Bool = false
    var recording: String
    
    var body: some View {
 
        if !(show_next) {
            VStack {
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
                    Text(recording)
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

