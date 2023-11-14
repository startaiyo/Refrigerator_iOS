//
//  IngredientListItemTableHeaderView.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

import UIKit

final class IngredientListItemTableHeaderView: UITableViewHeaderFooterView {
    // MARK: Public properties
    static var identifier: String {
        return String(describing: self)
    }

    // MARK: Private properties
    @IBOutlet private var titleLabelStackView: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}

// MARK: - Public functions
extension IngredientListItemTableHeaderView {
    func setHeaderTitleLabels(titles: [String]) {
        titleLabelStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        titles.forEach {
            let label = createLabel($0)
            titleLabelStackView.addArrangedSubview(label)
        }
    }
}

// MARK: - Private functions
private extension IngredientListItemTableHeaderView {
    func setupUI() {
        setupTitleLabelStackView()
    }

    func setupTitleLabelStackView() {
        titleLabelStackView.axis = .horizontal
        titleLabelStackView.distribution = .equalCentering
    }

    func createLabel(_ title: String) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.text = title
        return label
    }
}
