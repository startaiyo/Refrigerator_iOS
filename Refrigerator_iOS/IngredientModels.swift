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
}

#if DEBUG
extension IngredientModels{
    static var sampleData = [
        IngredientModels(id: "a", name: "りんご", weight: 120),
        IngredientModels(id: "b", name: "トマト", weight: 80),
        IngredientModels(id: "c", name: "豚肉", weight: 300),
    ]
}
#endif

