//
//  Kana.swift
//  Easy Kana
//
//  Created by administrator on 3/27/21.
//

import Foundation

// These variables hold the list of hiragana and katakana to be studied
var hiraganas: [Kana] = get_hiragana()
var katakanas: [Kana] = get_katakana()
var last_kana: Kana = Kana(kana: "")

// Get alist of hiragana
private func get_hiragana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "ある"))
    hiragana_list.append(Kana(kana: "いま"))
    hiragana_list.append(Kana(kana: "うし"))
    hiragana_list.append(Kana(kana: "えび"))
    hiragana_list.append(Kana(kana: "おく"))
    hiragana_list.append(Kana(kana: "かも"))
    
    return hiragana_list

    
}

// Get a list of katakana
private func get_katakana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "アル"))
    hiragana_list.append(Kana(kana: "イカ"))
    hiragana_list.append(Kana(kana: "ウマ"))
    hiragana_list.append(Kana(kana: "エリ"))
    hiragana_list.append(Kana(kana: "オフ"))
    hiragana_list.append(Kana(kana: "カバ"))
    
    return hiragana_list

    
}

// This gets a random hiragana
func get_random_hiragana() -> Kana {
    last_kana = hiraganas.randomElement()!
    return last_kana
    
}

// This gets a random katakana
func get_random_katakana() -> Kana {
    last_kana = katakanas.randomElement()!
    return last_kana
    
}
// This class holds each hiragana and katakana as well as keeps track of how many times
// it has been gotten wrong and write
class Kana {
    private var kana: String
    private var rightCount: Int
    private var wrongCount: Int
    
    // Initializes the Kana object and sets right and wrong count to zero
    init(kana: String){
        self.kana = kana
        self.rightCount = 0
        self.wrongCount = 0
    }
    
    // Gets the kana
    func get_kana() -> String {
        return self.kana
    }
    
    // Gets the number of time an item has been answered correctly
    func get_rightCount() -> Int {
        return self.rightCount
    }
    
    // Gets the number of time an item has been answered correctly
    func get_wrongCount() -> Int {
        return self.wrongCount
    }
    
    // Incrementals rightCount
    func inc_rightCount() {
        self.rightCount += 1
    }
    
    // Incrementals wrongCount
    func inc_wrongCount() {
        self.wrongCount += 1
    }
}
