//
//  IngredientModels.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/06.
//

import UIKit

typealias IngredientID = String

struct IngredientModels {
    var id: IngredientID
    var name: String
    var weight: Int
    var nutritions: [NutritionModels]
}
