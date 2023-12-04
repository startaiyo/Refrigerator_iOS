//
//  IngredientListRow.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

struct IngredientListRow {
    let viewModel: IngredientListItemViewModel
}

extension IngredientListRow: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(viewModel.name)
        hasher.combine(viewModel.nutritions)
        hasher.combine(viewModel.weightString)
    }
    static func == (lhs: IngredientListRow,
                    rhs: IngredientListRow) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
