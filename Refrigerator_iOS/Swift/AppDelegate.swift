//
//  AppDelegate.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/03.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var ingredientListCoordinator: IngredientListCoordinator?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "LaunchScreen",
                                      bundle: nil)
        let launchVC = storyboard.instantiateViewController(withIdentifier: "LaunchScreenViewController")
        window?.rootViewController = launchVC
        window?.makeKeyAndVisible()
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        displayIngredientScreen()
    }
}

// MARK: - Private functions
private extension AppDelegate {
    func displayIngredientScreen() {
        if let window = window,
           ingredientListCoordinator == nil {
            ingredientListCoordinator = IngredientListCoordinator(window: window)
            self.ingredientListCoordinator?.start()
        }
    }
}
