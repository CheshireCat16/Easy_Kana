//
//  KanaView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI

struct KanaView: View {
    @Binding var show_hiragana: Bool
    // This is used to track whether or not a question has been answered correctly
    @State var correct = 0
    
    var body: some View {
        if show_hiragana {
            Text(hiraganas.randomElement()!.get_kana())
                .font(.system(size: 100))
                .multilineTextAlignment(.center)
                .frame(height: 150)
                .overlay(Circle().stroke(Color.green, lineWidth: 8))
        }
        else{
            Text(katakanas.randomElement()!.get_kana())
                .font(.system(size: 100))
                .multilineTextAlignment(.center)
                .frame(height: 150)
                .scaledToFill()
        }
    }
}

struct KanaView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            KanaView(show_hiragana: .constant(true))
            KanaView(show_hiragana: .constant(false))
        }
    }
}
