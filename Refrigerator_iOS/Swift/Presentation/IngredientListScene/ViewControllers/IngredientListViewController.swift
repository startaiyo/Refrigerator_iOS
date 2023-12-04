//
//  IngredientListViewController.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/07.
//

import UIKit

final class IngredientListViewController: UIViewController {
    // MARK: Public properties
    var viewModel: IngredientListViewModelProtocol!

    // MARK: Private properties
    private lazy var dataSource = IngredientDataSource(ingredientTableView)

    @IBOutlet private var ingredientTableView: UITableView!
    @IBOutlet private var addButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindings()
    }
}

// MARK: - Private functions
private extension IngredientListViewController {
    func setupUI() {
        title = "refrigerator"
        setupNavigationBar()
        setupTableView()
        setupAddButton()
    }

    func setupNavigationBar() {
        let appearance = UINavigationBarAppearance()
        let navigationBackgroundImage = UIImage(named: "refrigerator_header")
        appearance.backgroundImage = navigationBackgroundImage
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        self.navigationController?.navigationBar.standardAppearance = appearance
    }

    func setupBindings() {
        dataSource.apply(viewModel.items)
    }

    func setupTableView() {
        ingredientTableView.register(UINib(nibName: "IngredientListItemTableHeaderView",
                                            bundle: nil),
                                     forHeaderFooterViewReuseIdentifier: IngredientListItemTableHeaderView.identifier)
        ingredientTableView.register(UINib(nibName: "IngredientListItemTableViewCell",
                                           bundle: nil),
                                     forCellReuseIdentifier: "IngredientListItemTableViewCell")
        ingredientTableView.delegate = self
        ingredientTableView.separatorStyle = .none
    }

    func setupAddButton() {
        if let font = UIFont(name: "Helvetica-Bold",
                             size: 30) {
            addButton.setAttributedTitle(NSAttributedString(string: "+",
                                                            attributes: [NSAttributedString.Key.font: font,
                                                                         NSAttributedString.Key.foregroundColor: UIColor.white]),
                                         for: .normal)
        }
        addButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        addButton.setTitleColor(UIColor.white,
                                for:.normal)
        addButton.backgroundColor = UIColor.blue
        addButton.layer.cornerRadius = addButton.bounds.height / 2
    }
}

extension IngredientListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: IngredientListItemTableHeaderView.identifier) as? IngredientListItemTableHeaderView
        else {
            fatalError("Failed to dequeue header with reuse identifier \(IngredientListItemTableHeaderView.identifier)")
        }
        headerView.setHeaderTitleLabels(titles: viewModel.titles)
        return headerView
    }
}
