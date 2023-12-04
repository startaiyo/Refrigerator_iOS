//
//  IngredientListItemViewModel.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

protocol IngredientListItemViewModelOutput {
    var name: String { get }
    var weightString: String { get }
    var nutritions: [Nutrition] { get }
}

typealias IngredientListItemViewModelProtocol = IngredientListItemViewModelOutput

extension IngredientListItemViewModel {
    struct Input {
        let ingredient: IngredientModels
    }
}

final class IngredientListItemViewModel {
    // MARK: Private properties
    private let input: Input

    init(input: Input) {
        self.input = input
    }
}

// MARK: - IngredientListItemViewModelOutput
extension IngredientListItemViewModel: IngredientListItemViewModelOutput {
    var name: String {
        return input.ingredient.name
    }

    var weightString: String {
        return "\(String(input.ingredient.weight)) g"
    }

    var nutritions: [Nutrition] {
        return input.ingredient.nutritions.map { $0.nutrition }
    }
}
