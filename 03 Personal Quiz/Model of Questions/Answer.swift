//
//  Answer.swift
//  03 Personal Quiz
//
//  Created by macbook pro 665 on 17/03/2019.
//  Copyright © 2019 Pavel Meshcheryakov. All rights reserved.
//

struct Answer {
    var text: String
    var type: PersonType 
}

enum PersonType: Character {
    case junior = "‼️", middle = "🎳", senior = "🕓", director = "👋🏼"
    
    var definition: String {
        switch self {
        case .junior:
            return "⚠️ Будь в ДВА раза внимательней и старательней!"
        case .middle:
            return "⭕️ Три! Три! Три! И дырку протрёшь!"
        case .senior:
            return "⌛️ Время Хорошистов!"
        case .director:
            return "✅ Ты меня порадовал! Дай пять!"
       
        }
    }
}
