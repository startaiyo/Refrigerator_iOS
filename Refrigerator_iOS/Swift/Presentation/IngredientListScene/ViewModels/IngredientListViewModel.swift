//
//  IngredientListViewModel.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

protocol IngredientListViewModelOutput {
    var items: [IngredientListRow] { get }
    var titles: [String] { get }
}

typealias IngredientListViewModelProtocol = IngredientListViewModelOutput

final class IngredientListViewModel {
    // MARK: Private properties
    private var ingredients: [IngredientModels]?
    private var ingredientListRows: [IngredientListRow]?

    init() {
        self.fetchIngredients()
    }
}

// MARK: - Private functions
private extension IngredientListViewModel {
    func fetchIngredients() {
        ingredients = [.init(id: "a", name: "りんご", weight: 120, nutritions: [NutritionModels(id: "1", nutrition: .vitamin), NutritionModels(id:"2", nutrition: .mineral)]), .init(id: "b", name: "トマト", weight: 80, nutritions: [NutritionModels(id: "1", nutrition: .vitamin)]), .init(id: "c", name: "豚肉", weight: 300, nutritions: [NutritionModels(id: "3", nutrition: .protein), NutritionModels(id:"4", nutrition: .fat)]), .init(id: "d", name: "スーパー食材", weight: 200, nutritions: [NutritionModels(id: "31", nutrition: .carboHydrate),NutritionModels(id: "32", nutrition: .fat),NutritionModels(id: "33", nutrition: .mineral),NutritionModels(id: "34", nutrition: .protein),NutritionModels(id: "35", nutrition: .vitamin)])]
        guard let ingredients else { return }
        ingredientListRows = ingredients.map { self.makeRow(model: $0) }
    }

    func makeRow(model: IngredientModels) -> IngredientListRow {
        return .init(viewModel: .init(input: .init(ingredient: model)))
    }
}

// MARK: - IngredientListViewModelOutput
extension IngredientListViewModel: IngredientListViewModelOutput {
    var items: [IngredientListRow] {
        return ingredientListRows ?? []
    }

    var titles: [String] {
        return ["食材名", "重量", "栄養素", "操作"]
    }
}
