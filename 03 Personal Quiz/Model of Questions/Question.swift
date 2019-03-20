//
//  Question.swift
//  03 Personal Quiz
//
//  Created by macbook pro 665 on 17/03/2019.
//  Copyright © 2019 Pavel Meshcheryakov. All rights reserved.
//

struct Question {
    var text: String
    var type: ResponceType
    var answers: [Answer]
    
    static func loadData() -> [Question] {
        return [
            Question(
                text: "Укажите предложение с составным глагольным сказуемым.",
                type: .single,
                answers: [
                    Answer(text: "Чичиков должен был на минуту зажмурить глаза.", type: .director),
                    Answer(text: "Вскоре я бросил писать стихи.", type: .director),
                    Answer(text: "Вечером с высоких берёз Тетерева начали нырять в снег", type: .director),
                    Answer(text: "И стали три пальмы на Бога роптать.", type: .director),
                ]
            ),
            Question(
                text: "Укажите предложение с составным именным сказуемым.",
                type: .multiple,
                answers: [
                    Answer(text: "С пригорка была видна вся деревня.", type: .director),
                    Answer(text: "Он сел и записал рассказ старушки.", type: .director),
                    Answer(text: "Лицо у него было кислое.", type: .director),
                    Answer(text: "Слово – серебро, молчание – золото.", type: .director),
                ]
            ),
            Question(
                text: "Укажите предложение с простым глагольным сказуемым:",
                type: .ranger,
                answers: [
                    Answer(text: "Пришел приказ захватить плацдарм на противоположной стороне реки.", type: .director),
                    Answer(text: "Молчание – золото.", type: .junior),
                    Answer(text: "Предположения Ливеровского оказались правильными.", type: .junior),
                    Answer(text: "В воздухе густо пахло смолой.", type: .director),
                ]
            ),
        ]
    }
}

enum ResponceType {
    case single, multiple, ranger
    
}
