//
//  KanaView.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import SwiftUI

struct KanaView: View {
    @Binding var hiragana: Bool
    
    var body: some View {
        if hiragana {
            Text("あ")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .scaledToFill()
        }
        else{
            Text("ア")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .scaledToFill()
        }
    }
}

struct KanaView_Previews: PreviewProvider {

    static var previews: some View {
        Group {
            KanaView(hiragana: .constant(true))
            KanaView(hiragana: .constant(false))
        }
    }
}
