//
//  NutritionModels.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/09.
//

import Foundation

typealias NutritionID = String

enum Nutrition: String, Codable {
    case carboHydrate
    case vitamin
    case mineral
    case fat
    case protein

    var japanese: String {
        switch self {
        case .carboHydrate:
            return "炭水化物"
        case .fat:
            return "脂肪"
        case .mineral:
            return "ミネラル"
        case .vitamin:
            return "ビタミン"
        case .protein:
            return "タンパク質"
        }
    }
}

struct NutritionModels {
    var id: NutritionID
    var nutrition: Nutrition
}
