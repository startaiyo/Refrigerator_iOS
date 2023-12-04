//
//  IngredientListItemTableViewCell.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/12.
//

import UIKit

final class IngredientListItemTableViewCell: UITableViewCell {
    // MARK: Public properties
    var viewModel: IngredientListItemViewModelProtocol! {
        didSet {
            setupBindings()
        }
    }

    // MARK: Private properties
    @IBOutlet private var mainStackView: UIStackView!
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var weightLabel: UILabel!
    @IBOutlet private var nutritionStackView: UIStackView!
    @IBOutlet private var buttonStackView: UIStackView!
    @IBOutlet private var editButton: UIButton!
    @IBOutlet private var deleteButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}

// MARK: - Private functions
private extension IngredientListItemTableViewCell {
    func setupUI() {
        selectionStyle = .none
        setupMainStackView()
        setupEditButton()
        setupDeleteButton()
        setupNutritionStackView()
        setupNameLabel()
        buttonStackView.spacing = 5
        weightLabel.textAlignment = .center
    }

    func setupBindings() {
        nameLabel.text = viewModel.name
        weightLabel.text = viewModel.weightString
        setNutritions(viewModel.nutritions)
    }

    func setupMainStackView() {
        mainStackView.alignment = .center
        mainStackView.distribution = .equalCentering
        mainStackView.backgroundColor = UIColor(red: 0.85,
                                                green: 0.85,
                                                blue: 0.85,
                                                alpha: 1.0)
        mainStackView.layer.cornerRadius = 5
        mainStackView.layoutMargins = UIEdgeInsets(top: 5,
                                                   left: 10,
                                                   bottom: 5,
                                                   right: 10)
        mainStackView.isLayoutMarginsRelativeArrangement = true
    }

    func setupNutritionStackView() {
        nutritionStackView.spacing = 3
        nutritionStackView.distribution = .equalSpacing
    }

    func setupNameLabel() {
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 0
    }

    func setNutritions(_ nutritions: [Nutrition]) {
        nutritionStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        nutritions.forEach {
            nutritionStackView.addArrangedSubview(createLabel(nutrition: $0))
        }
    }

    func createLabel(nutrition: Nutrition) -> UILabel {
        let label = UILabel()
        NSLayoutConstraint.activate([
            label.heightAnchor.constraint(equalToConstant: 15)
        ])
        label.text = nutrition.japanese
        label.textAlignment = .center
        switch nutrition {
            case .carboHydrate:
                label.backgroundColor = .white
            case .vitamin:
                label.textColor = .white
            label.backgroundColor = Color.vitaminGreen.value
            case .mineral:
                label.textColor = .white
                label.backgroundColor = .blue
            case .fat:
                label.backgroundColor = .yellow
            case .protein:
                label.textColor = .white
                label.backgroundColor = .red
        }
        label.layer.cornerRadius = 6
        label.clipsToBounds = true
        return label
    }

    func setupEditButton() {
        editButton.setImage(UIImage(named: "edit"),
                            for: .normal)
        editButton.tintColor = .black
        editButton.imageView?.contentMode = .right
        editButton.addTarget(self,
                             action: #selector(handleEditButtonTapped),
                             for: .touchUpInside)
    }

    func setupDeleteButton() {
        deleteButton.setImage(UIImage(named: "delete"),
                              for: .normal)
        deleteButton.tintColor = .red
        deleteButton.addTarget(self,
                               action: #selector(handleDeleteButtonTapped),
                               for: .touchUpInside)
    }

    @objc
    func handleEditButtonTapped() {}

    @objc
    func handleDeleteButtonTapped() {}
}
