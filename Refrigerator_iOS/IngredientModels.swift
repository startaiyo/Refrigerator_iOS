//
//  IngredientModels.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/06.
//

import UIKit
struct IngredientModels {
    var id: String
    var name: String
    var weight: Int
    var nutritions: [NutritionModels]
}

#if DEBUG
extension IngredientModels{
    static var sampleData = [
        IngredientModels(id: "a", name: "りんご", weight: 120, nutritions: [NutritionModels(id: "1", name: "ビタミン"), NutritionModels(id:"2", name: "ミネラル")]),
        IngredientModels(id: "b", name: "トマト", weight: 80, nutritions: [NutritionModels(id: "1", name: "ビタミン")]),
        IngredientModels(id: "c", name: "豚肉", weight: 300, nutritions: [NutritionModels(id: "3", name: "タンパク質"), NutritionModels(id:"4", name: "脂質")]),
    ]
}
#endif

