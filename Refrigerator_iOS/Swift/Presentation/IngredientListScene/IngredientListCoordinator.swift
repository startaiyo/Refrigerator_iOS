//
//  IngredientListCoordinator.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/07.
//

import UIKit

final class IngredientListCoordinator {
    // MARK: Private properties
    private let window: UIWindow
    private var ingredientListNavigationController = UINavigationController()
    
    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        showIngredientListScreen()
    }
}

// MARK: - IngredientListCoordinator
private extension IngredientListCoordinator {
    func showIngredientListScreen() {
        let storyboard = UIStoryboard(name: "IngredientList",
                                      bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "IngredientListViewController") as? IngredientListViewController {
            let viewModel = IngredientListViewModel()
            viewController.viewModel = viewModel
            ingredientListNavigationController.setViewControllers([viewController],
                                                                  animated: true)
            window.rootViewController = ingredientListNavigationController
        }
    }
}
