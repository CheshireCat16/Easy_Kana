//  Holds global variables that are accessed by many views.
//  Also contains key list of kana as well as associated attributes.
//
//  Kana.swift
//  Easy Kana

import Foundation

// These variables hold the list of hiragana and katakana to be studied
var hiraganas: [Kana] = get_hiragana()
var katakanas: [Kana] = get_katakana()
var last_kana: Kana = Kana(kana: "", answerKey: [], pron: "")

// Get alist of hiragana
private func get_hiragana() -> [Kana]{
    var hiragana_list: [Kana] = []
    
    hiragana_list.append(Kana(kana: "あか", answerKey: ["あか", "赤"], pron: ""))
    hiragana_list.append(Kana(kana: "いけ", answerKey: ["いけ", "池"], pron: ""))
    hiragana_list.append(Kana(kana: "うえ", answerKey: ["うえ", "上"], pron: ""))
    hiragana_list.append(Kana(kana: "えき", answerKey: ["えき", "駅"], pron: ""))
    hiragana_list.append(Kana(kana: "おく", answerKey: ["おく", "奥", "屋"], pron: ""))
    hiragana_list.append(Kana(kana: "けっこう", answerKey: ["けっこう", "結構"], pron: ""))
    hiragana_list.append(Kana(kana: "くん", answerKey: ["くん", "君", "Coon"], pron: ""))
    hiragana_list.append(Kana(kana: "かい", answerKey: ["かい", "買い", "回", "貝", "海"], pron: ""))
    hiragana_list.append(Kana(kana: "きく", answerKey: ["きく", "聞く", "菊", "聴く", "効く", "結局"], pron: ""))
    hiragana_list.append(Kana(kana: "くうき", answerKey: ["くうき", "空気"], pron: ""))
    hiragana_list.append(Kana(kana: "けっか", answerKey: ["けっか", "結果"], pron: ""))
    hiragana_list.append(Kana(kana: "こうくう", answerKey: ["こうくう", "航空"], pron: ""))
    hiragana_list.append(Kana(kana: "がっき", answerKey: ["がっき", "楽器"], pron: ""))
    hiragana_list.append(Kana(kana: "ぎかい", answerKey: ["ぎかい", "議会"], pron: ""))
    hiragana_list.append(Kana(kana: "ぐん", answerKey: ["ぐん", "群", "軍"], pron: ""))
    hiragana_list.append(Kana(kana: "げんき", answerKey: ["げんき", "元気"], pron: ""))
    hiragana_list.append(Kana(kana: "かご", answerKey: ["かご", "籠", "("], pron: ""))
    hiragana_list.append(Kana(kana: "さか", answerKey: ["さか", "坂", "酒"], pron: ""))
    hiragana_list.append(Kana(kana: "しか", answerKey: ["しか", "鹿", "私が"], pron: ""))
    hiragana_list.append(Kana(kana: "すし", answerKey: ["すし", "寿司"], pron: ""))
    hiragana_list.append(Kana(kana: "せんせい", answerKey: ["せんせい", "先生"], pron: ""))
    hiragana_list.append(Kana(kana: "そこ", answerKey: ["そこ", "そうか"], pron: ""))
    hiragana_list.append(Kana(kana: "ざっし", answerKey: ["ざっし", "雑誌"], pron: ""))
    hiragana_list.append(Kana(kana: "じかん", answerKey: ["じかん", "時間"], pron: ""))
    hiragana_list.append(Kana(kana: "ずかん", answerKey: ["ずかん", "図鑑"], pron: ""))
    hiragana_list.append(Kana(kana: "ぜんぜん", answerKey: ["ぜんぜん", "全然"], pron: ""))
    hiragana_list.append(Kana(kana: "ぞう", answerKey: ["ぞう", "像", "蔵"], pron: ""))
    hiragana_list.append(Kana(kana: "たき", answerKey: ["たき", "滝", "Tak"], pron: ""))
    hiragana_list.append(Kana(kana: "ちか", answerKey: ["ちか", "地下"], pron: ""))
    hiragana_list.append(Kana(kana: "つごう", answerKey: ["つごう", "都合", "違う", "15", "ツボ"], pron: ""))
    hiragana_list.append(Kana(kana: "てんと", answerKey: ["てんと", "テント"], pron: "")) //, ""
    hiragana_list.append(Kana(kana: "とき", answerKey: ["とき", "時"], pron: ""))
    hiragana_list.append(Kana(kana: "だった", answerKey: ["だった"], pron: ""))
    hiragana_list.append(Kana(kana: "ちぢむ", answerKey: ["ちぢむ", "縮む"], pron: ""))
    hiragana_list.append(Kana(kana: "ちかづく", answerKey: ["ちかづく", "近づく", "近付く"], pron: ""))
    hiragana_list.append(Kana(kana: "できごと", answerKey: ["できごと", "出来事"], pron: ""))
    hiragana_list.append(Kana(kana: "どっち", answerKey: ["どっち"], pron: ""))
    hiragana_list.append(Kana(kana: "なに", answerKey: ["なに", "何"], pron: ""))
    hiragana_list.append(Kana(kana: "にんじん", answerKey: ["にんじん", "人参"], pron: ""))
    hiragana_list.append(Kana(kana: "ぬの", answerKey: ["ぬの", "布"], pron: ""))
    hiragana_list.append(Kana(kana: "ねこ", answerKey: ["ねこ", "猫"], pron: ""))
    hiragana_list.append(Kana(kana: "のう", answerKey: ["のう", "脳", "能", "ノー"], pron: ""))
    hiragana_list.append(Kana(kana: "はち", answerKey: ["はち", "ハチ", "八", "蜂", "8"], pron: ""))
    hiragana_list.append(Kana(kana: "ひと", answerKey: ["ひと", "人", "1"], pron: ""))
    hiragana_list.append(Kana(kana: "ふとん", answerKey: ["ふとん", "布団"], pron: ""))
    hiragana_list.append(Kana(kana: "へそ", answerKey: ["へそ", "臍", "綣"], pron: ""))
    hiragana_list.append(Kana(kana: "ほん", answerKey: ["ほん", "本"], pron: ""))
    hiragana_list.append(Kana(kana: "ばしょ", answerKey: ["ばしょ", "場所"], pron: "場所"))
    hiragana_list.append(Kana(kana: "えび", answerKey: ["えび", "エビ", "海老"], pron: ""))
    hiragana_list.append(Kana(kana: "ぶた", answerKey: ["ぶた", "豚"], pron: ""))
    hiragana_list.append(Kana(kana: "べんとう", answerKey: ["べんとう", "弁当"], pron: ""))
    hiragana_list.append(Kana(kana: "しぼう", answerKey: ["しぼう", "脂肪", "死亡"], pron: ""))
    hiragana_list.append(Kana(kana: "ぱそこん", answerKey: ["ぱそこん", "パソコン"], pron: ""))
    hiragana_list.append(Kana(kana: "ぴか", answerKey: ["ぴか", "ピカ"], pron: ""))
    hiragana_list.append(Kana(kana: "いっぷん", answerKey: ["いっぷん", "一分", "1分"], pron: "一分"))
    hiragana_list.append(Kana(kana: "ぺん", answerKey: ["ぺん", "ペン", "."], pron: ""))
    hiragana_list.append(Kana(kana: "いっぽう", answerKey: ["いっぽう", "一方"], pron: ""))
    hiragana_list.append(Kana(kana: "まめ", answerKey: ["まめ", "豆"], pron: ""))
    hiragana_list.append(Kana(kana: "みかん", answerKey: ["みかん", "ミカン"], pron: ""))
    hiragana_list.append(Kana(kana: "むし", answerKey: ["むし", "虫"], pron: ""))
    hiragana_list.append(Kana(kana: "めろん", answerKey: ["めろん", "メロン"], pron: ""))
    hiragana_list.append(Kana(kana: "もも", answerKey: ["もも", "桃"], pron: ""))
    hiragana_list.append(Kana(kana: "やま", answerKey: ["やま", "山"], pron: ""))
    hiragana_list.append(Kana(kana: "ゆうべ", answerKey: ["ゆうべ", "夕べ", "昨夜"], pron: ""))
    hiragana_list.append(Kana(kana: "よかった", answerKey: ["よかった", "良かった"], pron: ""))
    hiragana_list.append(Kana(kana: "きらく", answerKey: ["きらく", "気楽"], pron: ""))
    hiragana_list.append(Kana(kana: "りかい", answerKey: ["りかい", "理解"], pron: ""))
    hiragana_list.append(Kana(kana: "るすばん", answerKey: ["るすばん", "留守番"], pron: ""))
    hiragana_list.append(Kana(kana: "れんぽう", answerKey: ["れんぽう", "連邦"], pron: ""))
    hiragana_list.append(Kana(kana: "ろうそく", answerKey: ["ろうそく", "蝋燭"], pron: ""))
    hiragana_list.append(Kana(kana: "わに", answerKey: ["わに", "ワニ", "和に", "Lilly"], pron: ""))
    hiragana_list.append(Kana(kana: "にほんごを", answerKey: ["にほんごを", "日本語を"], pron: ""))
    hiragana_list.append(Kana(kana: "しゃしん", answerKey: ["しゃしん", "写真"], pron: ""))
    hiragana_list.append(Kana(kana: "しゅくだい", answerKey: ["しゅくだい", "宿題"], pron: ""))
    hiragana_list.append(Kana(kana: "しょうひん", answerKey: ["しょうひん", "商品"], pron: ""))
    hiragana_list.append(Kana(kana: "じゃぐち", answerKey: ["じゃぐち", "蛇口"], pron: ""))
    hiragana_list.append(Kana(kana: "じゅうしょ", answerKey: ["じゅうしょ", "住所"], pron: ""))
    hiragana_list.append(Kana(kana: "じょうけん", answerKey: ["じょうけん", "条件"], pron: ""))
    hiragana_list.append(Kana(kana: "おきゃくさん", answerKey: ["おきゃくさん", "お客さん"], pron: ""))
    hiragana_list.append(Kana(kana: "きゅうり", answerKey: ["きゅうり", "キュウリ", "胡瓜"], pron: ""))
    hiragana_list.append(Kana(kana: "きょうと", answerKey: ["きょうと", "京都"], pron: ""))
    hiragana_list.append(Kana(kana: "ぎゃく", answerKey: ["ぎゃく", "逆"], pron: ""))
    hiragana_list.append(Kana(kana: "ぎゅうにく", answerKey: ["ぎゅうにく", "牛肉"], pron: ""))
    hiragana_list.append(Kana(kana: "ぎょうざ", answerKey: ["ぎょうざ", "餃子"], pron: ""))
    hiragana_list.append(Kana(kana: "おちゃ", answerKey: ["おちゃ", "お茶"], pron: ""))
    hiragana_list.append(Kana(kana: "とちゅう", answerKey: ["とちゅう", "途中"], pron: ""))
    hiragana_list.append(Kana(kana: "ちょっと", answerKey: ["ちょっと", "ちょっと"], pron: ""))
    hiragana_list.append(Kana(kana: "こんにゃく", answerKey: ["こんにゃく", "コンニャク", "蒟蒻"], pron: ""))
    hiragana_list.append(Kana(kana: "にゅういん", answerKey: ["にゅういん", "入院"], pron: ""))
    hiragana_list.append(Kana(kana: "にょう", answerKey: ["にょう", "尿", "女"], pron: ""))
    hiragana_list.append(Kana(kana: "ひゃく", answerKey: ["ひゃく", "百", "100"], pron: ""))
    hiragana_list.append(Kana(kana: "ひゅうひゅう", answerKey: ["ひゅうひゅう", "ヒューヒュー"], pron: ""))
    hiragana_list.append(Kana(kana: "ひょうか", answerKey: ["ひょうか", "評価"], pron: ""))
    hiragana_list.append(Kana(kana: "なんびゃく", answerKey: ["なんびゃく", "何百", "男白"], pron: ""))
    hiragana_list.append(Kana(kana: "でびゅう", answerKey: ["でびゅう", "デビュー"], pron: ""))
    hiragana_list.append(Kana(kana: "びょういん", answerKey: ["びょういん", "病院"], pron: ""))
    hiragana_list.append(Kana(kana: "ろっぴゃく", answerKey: ["ろっぴゃく", "六百", "600"], pron: ""))
    hiragana_list.append(Kana(kana: "ぴゅあ", answerKey: ["ぴゅあ", "ピュア"], pron: ""))
    hiragana_list.append(Kana(kana: "ぴょこぴょこ", answerKey: ["ぴょこぴょこ"], pron: ""))
    hiragana_list.append(Kana(kana: "みゃく", answerKey: ["みゃく", "脈"], pron: ""))
    hiragana_list.append(Kana(kana: "みゅぜ", answerKey: ["みゅぜ", "ミュゼ"], pron: ""))
    hiragana_list.append(Kana(kana: "みょうじ", answerKey: ["みょうじ", "名字", "苗字"], pron: ""))
    hiragana_list.append(Kana(kana: "りゃくしょう", answerKey: ["りゃくしょう", "略称", "役所"], pron: ""))
    hiragana_list.append(Kana(kana: "りゅうがく", answerKey: ["りゅうがく", "留学"], pron: ""))
    hiragana_list.append(Kana(kana: "りょうり", answerKey: ["りょうり", "料理"], pron: ""))
    hiragana_list.append(Kana(kana: "こんにちは", answerKey: ["こんにちは", "今日は"], pron: ""))
    
    return hiragana_list

    
}

// Get a list of katakana
private func get_katakana() -> [Kana]{
    var katakana_list: [Kana] = []
    
    katakana_list.append(Kana(kana: "アカ", answerKey: ["あか", "赤"], pron: ""))
    katakana_list.append(Kana(kana: "イケ", answerKey: ["いけ", "池"], pron: ""))
    katakana_list.append(Kana(kana: "ウエ", answerKey: ["うえ", "上"], pron: ""))
    katakana_list.append(Kana(kana: "エキ", answerKey: ["えき", "駅"], pron: ""))
    katakana_list.append(Kana(kana: "オク", answerKey: ["おく", "奥", "屋"], pron: ""))
    katakana_list.append(Kana(kana: "ケッコウ", answerKey: ["けっこう", "結構"], pron: ""))
    katakana_list.append(Kana(kana: "クン", answerKey: ["くん", "君", "Coon"], pron: ""))
    katakana_list.append(Kana(kana: "カイ", answerKey: ["かい", "買い", "回", "貝", "海"], pron: ""))
    katakana_list.append(Kana(kana: "キク", answerKey: ["きく", "聞く", "菊", "聴く", "効く", "結局"], pron: ""))
    katakana_list.append(Kana(kana: "クウキ", answerKey: ["くうき", "空気"], pron: ""))
    katakana_list.append(Kana(kana: "ケッカ", answerKey: ["けっか", "結果"], pron: ""))
    katakana_list.append(Kana(kana: "コウクウ", answerKey: ["こうくう", "航空"], pron: ""))
    katakana_list.append(Kana(kana: "ガッキ", answerKey: ["がっき", "楽器"], pron: ""))
    katakana_list.append(Kana(kana: "ギカイ", answerKey: ["ぎかい", "議会"], pron: ""))
    katakana_list.append(Kana(kana: "グン", answerKey: ["ぐん", "群", "軍"], pron: ""))
    katakana_list.append(Kana(kana: "ゲンキ", answerKey: ["げんき", "元気"], pron: ""))
    katakana_list.append(Kana(kana: "カゴ", answerKey: ["かご", "籠", "("], pron: ""))
    katakana_list.append(Kana(kana: "サカ", answerKey: ["さか", "坂", "酒"], pron: ""))
    katakana_list.append(Kana(kana: "シカ", answerKey: ["しか", "鹿", "私が"], pron: ""))
    katakana_list.append(Kana(kana: "スシ", answerKey: ["すし", "寿司"], pron: ""))
    katakana_list.append(Kana(kana: "センセイ", answerKey: ["せんせい", "先生"], pron: ""))
    katakana_list.append(Kana(kana: "ソコ", answerKey: ["そこ", "そうか"], pron: ""))
    katakana_list.append(Kana(kana: "ザッシ", answerKey: ["ざっし", "雑誌"], pron: ""))
    katakana_list.append(Kana(kana: "ジカン", answerKey: ["じかん", "時間"], pron: ""))
    katakana_list.append(Kana(kana: "ズカン", answerKey: ["ずかん", "図鑑"], pron: ""))
    katakana_list.append(Kana(kana: "ゼンゼン", answerKey: ["ぜんぜん", "全然"], pron: ""))
    katakana_list.append(Kana(kana: "ゾウ", answerKey: ["ぞう", "像", "蔵"], pron: ""))
    katakana_list.append(Kana(kana: "タキ", answerKey: ["たき", "滝", "Tak"], pron: ""))
    katakana_list.append(Kana(kana: "チカ", answerKey: ["ちか", "地下"], pron: ""))
    katakana_list.append(Kana(kana: "ツゴウ", answerKey: ["つごう", "都合", "違う", "15", "ツボ"], pron: ""))
    katakana_list.append(Kana(kana: "テント", answerKey: ["てんと", "テント"], pron: "")) //, ""
    katakana_list.append(Kana(kana: "トキ", answerKey: ["とき", "時"], pron: ""))
    katakana_list.append(Kana(kana: "ダッタ", answerKey: ["だった"], pron: ""))
    katakana_list.append(Kana(kana: "チヂム", answerKey: ["ちぢむ", "縮む"], pron: ""))
    katakana_list.append(Kana(kana: "チカヅク", answerKey: ["ちかづく", "近づく", "近付く"], pron: ""))
    katakana_list.append(Kana(kana: "デキゴト", answerKey: ["できごと", "出来事"], pron: ""))
    katakana_list.append(Kana(kana: "ドッチ", answerKey: ["どっち"], pron: ""))
    katakana_list.append(Kana(kana: "ナニ", answerKey: ["なに", "何"], pron: ""))
    katakana_list.append(Kana(kana: "ニンジン", answerKey: ["にんじん", "人参"], pron: ""))
    katakana_list.append(Kana(kana: "ヌノ", answerKey: ["ぬの", "布"], pron: ""))
    katakana_list.append(Kana(kana: "ネコ", answerKey: ["ねこ", "猫"], pron: ""))
    katakana_list.append(Kana(kana: "ノー", answerKey: ["のう", "脳", "能", "ノー"], pron: ""))
    katakana_list.append(Kana(kana: "ハチ", answerKey: ["はち", "ハチ", "八", "蜂", "8"], pron: ""))
    katakana_list.append(Kana(kana: "ヒト", answerKey: ["ひと", "人", "1"], pron: ""))
    katakana_list.append(Kana(kana: "フトン", answerKey: ["ふとん", "布団"], pron: ""))
    katakana_list.append(Kana(kana: "ヘソ", answerKey: ["へそ", "臍", "綣"], pron: ""))
    katakana_list.append(Kana(kana: "ホン", answerKey: ["ほん", "本"], pron: ""))
    katakana_list.append(Kana(kana: "バショ", answerKey: ["ばしょ", "場所"], pron: "場所"))
    katakana_list.append(Kana(kana: "エビ", answerKey: ["えび", "エビ", "海老"], pron: ""))
    katakana_list.append(Kana(kana: "ブタ", answerKey: ["ぶた", "豚"], pron: ""))
    katakana_list.append(Kana(kana: "ベントウ", answerKey: ["べんとう", "弁当"], pron: ""))
    katakana_list.append(Kana(kana: "シボウ", answerKey: ["しぼう", "脂肪", "死亡"], pron: ""))
    katakana_list.append(Kana(kana: "パソコン", answerKey: ["ぱそこん", "パソコン"], pron: ""))
    katakana_list.append(Kana(kana: "ピカ", answerKey: ["ぴか", "ピカ"], pron: ""))
    katakana_list.append(Kana(kana: "イップン", answerKey: ["いっぷん", "一分", "1分"], pron: ""))
    katakana_list.append(Kana(kana: "ペン", answerKey: ["ぺん", "ペン", "."], pron: ""))
    katakana_list.append(Kana(kana: "イッポウ", answerKey: ["いっぽう", "一方"], pron: ""))
    katakana_list.append(Kana(kana: "マメ", answerKey: ["まめ", "豆"], pron: ""))
    katakana_list.append(Kana(kana: "ミカン", answerKey: ["みかん", "ミカン"], pron: ""))
    katakana_list.append(Kana(kana: "ムシ", answerKey: ["むし", "虫"], pron: ""))
    katakana_list.append(Kana(kana: "メロン", answerKey: ["めろん", "メロン"], pron: ""))
    katakana_list.append(Kana(kana: "モモ", answerKey: ["もも", "桃"], pron: ""))
    katakana_list.append(Kana(kana: "ヤマ", answerKey: ["やま", "山"], pron: ""))
    katakana_list.append(Kana(kana: "ユウベ", answerKey: ["ゆうべ", "夕べ", "昨夜"], pron: ""))
    katakana_list.append(Kana(kana: "ヨカッタ", answerKey: ["よかった", "良かった"], pron: ""))
    katakana_list.append(Kana(kana: "キラク", answerKey: ["きらく", "気楽"], pron: ""))
    katakana_list.append(Kana(kana: "リカイ", answerKey: ["りかい", "理解"], pron: ""))
    katakana_list.append(Kana(kana: "ルスバン", answerKey: ["るすばん", "留守番"], pron: ""))
    katakana_list.append(Kana(kana: "レンポウ", answerKey: ["れんぽう", "連邦"], pron: ""))
    katakana_list.append(Kana(kana: "ロウソク", answerKey: ["ろうそく", "蝋燭"], pron: ""))
    katakana_list.append(Kana(kana: "ワニ", answerKey: ["わに", "ワニ", "和に", "Lilly"], pron: ""))
    katakana_list.append(Kana(kana: "ニホンゴヲ", answerKey: ["にほんごを", "日本語を"], pron: ""))
    katakana_list.append(Kana(kana: "シャシン", answerKey: ["しゃしん", "写真"], pron: ""))
    katakana_list.append(Kana(kana: "シュクダイ", answerKey: ["しゅくだい", "宿題"], pron: ""))
    katakana_list.append(Kana(kana: "ショウヒン", answerKey: ["しょうひん", "商品"], pron: ""))
    katakana_list.append(Kana(kana: "ジャグチ", answerKey: ["じゃぐち", "蛇口"], pron: ""))
    katakana_list.append(Kana(kana: "ジュウショ", answerKey: ["じゅうしょ", "住所"], pron: ""))
    katakana_list.append(Kana(kana: "ジョウケン", answerKey: ["じょうけん", "条件"], pron: ""))
    katakana_list.append(Kana(kana: "オキャクサン", answerKey: ["おきゃくさん", "お客さん"], pron: ""))
    katakana_list.append(Kana(kana: "キュウリ", answerKey: ["きゅうり", "キュウリ", "胡瓜"], pron: ""))
    katakana_list.append(Kana(kana: "キョウト", answerKey: ["きょうと", "京都"], pron: ""))
    katakana_list.append(Kana(kana: "ギャク", answerKey: ["ぎゃく", "逆"], pron: ""))
    katakana_list.append(Kana(kana: "ギュウニク", answerKey: ["ぎゅうにく", "牛肉"], pron: ""))
    katakana_list.append(Kana(kana: "ギョウザ", answerKey: ["ぎょうざ", "餃子"], pron: ""))
    katakana_list.append(Kana(kana: "オチャ", answerKey: ["おちゃ", "お茶"], pron: ""))
    katakana_list.append(Kana(kana: "トチュウ", answerKey: ["とちゅう", "途中"], pron: ""))
    katakana_list.append(Kana(kana: "チョット", answerKey: ["ちょっと", "ちょっと"], pron: ""))
    katakana_list.append(Kana(kana: "コンニャク", answerKey: ["こんにゃく", "コンニャク", "蒟蒻"], pron: ""))
    katakana_list.append(Kana(kana: "ニュウイン", answerKey: ["にゅういん", "入院"], pron: ""))
    katakana_list.append(Kana(kana: "ニョウ", answerKey: ["にょう", "尿", "女"], pron: ""))
    katakana_list.append(Kana(kana: "ヒャク", answerKey: ["ひゃく", "百", "100"], pron: ""))
    katakana_list.append(Kana(kana: "ヒューヒュー", answerKey: ["ひゅうひゅう", "ヒューヒュー"], pron: ""))
    katakana_list.append(Kana(kana: "ヒョウカ", answerKey: ["ひょうか", "評価"], pron: ""))
    katakana_list.append(Kana(kana: "ナンビャク", answerKey: ["なんびゃく", "何百", "男白"], pron: ""))
    katakana_list.append(Kana(kana: "デビュー", answerKey: ["でびゅう", "デビュー"], pron: ""))
    katakana_list.append(Kana(kana: "ビョウイン", answerKey: ["びょういん", "病院"], pron: ""))
    katakana_list.append(Kana(kana: "ロッピャク", answerKey: ["ろっぴゃく", "六百", "600"], pron: ""))
    katakana_list.append(Kana(kana: "ピュア", answerKey: ["ぴゅあ", "ピュア"], pron: ""))
    katakana_list.append(Kana(kana: "ピョコピョコ", answerKey: ["ぴょこぴょこ"], pron: ""))
    katakana_list.append(Kana(kana: "ミャク", answerKey: ["みゃく", "脈"], pron: ""))
    katakana_list.append(Kana(kana: "ミュゼ", answerKey: ["みゅぜ", "ミュゼ"], pron: ""))
    katakana_list.append(Kana(kana: "ミョウジ", answerKey: ["みょうじ", "名字", "苗字"], pron: ""))
    katakana_list.append(Kana(kana: "リャクショウ", answerKey: ["りゃくしょう", "略称", "役所"], pron: ""))
    katakana_list.append(Kana(kana: "リュウガク", answerKey: ["りゅうがく", "留学"], pron: ""))
    katakana_list.append(Kana(kana: "リョウリ", answerKey: ["りょうり", "料理"], pron: ""))
    katakana_list.append(Kana(kana: "コンニチハ", answerKey: ["こんにちは", "今日は"], pron: ""))
    
    return katakana_list
    
}

// Test a recording against an answer key - return true or false
func test_recording(kana: Kana, recording: String) -> Bool {
    for answer in kana.get_AnswerKey() {
        if (recording == answer) {
            return true
        }
    }
    return false
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
    private var answerKey: [String]
    private var pron: String
    
    // Initializes the Kana object and sets right and wrong count to zero
    init(kana: String, answerKey: [String], pron: String){
        self.kana = kana
        self.rightCount = 0
        self.wrongCount = 0
        self.answerKey = answerKey
        self.pron = pron
    }
    
    // Gets the kana
    func get_kana() -> String {
        return self.kana
    }
    
    // Get the pronunciation
    func get_pron() -> String {
        if (self.pron != ""){
            return self.pron
        } else {
            return self.kana
        }
    }
    
    // Gets the number of time an item has been answered correctly
    func get_rightCount() -> Int {
        return self.rightCount
    }
    
    // Gets the answer key
    func get_AnswerKey() -> [String] {
        return self.answerKey
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
