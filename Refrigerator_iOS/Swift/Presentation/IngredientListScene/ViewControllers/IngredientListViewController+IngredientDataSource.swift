//
//  IngredientListViewController+IngredientDataSource.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

import UIKit

final class IngredientDataSource: UITableViewDiffableDataSource<Int, IngredientListRow> {
    init(_ tableView: UITableView) {
        super.init(tableView: tableView) { tableView, indexPath, data in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientListItemTableViewCell",
                                                           for: indexPath) as? IngredientListItemTableViewCell
            else {
                fatalError("Failed to dequeue cell with reuse identifier IngredientListItemTableViewCell")
            }
            cell.viewModel = data.viewModel
            return cell
        }
    }
}

// MARK: - Public functions
extension IngredientDataSource {
    func apply(_ items: [IngredientListRow]) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, IngredientListRow>()
        snapshot.appendSections([0])
        snapshot.appendItems(items)

        DispatchQueue.main.async {
            self.apply(snapshot,
                       animatingDifferences: false)
        }
    }
}
