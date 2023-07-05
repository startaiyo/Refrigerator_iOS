//
//  ViewController.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var addIngredientButton: UIButton!
    var headerImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addIngredientButton.setTitleColor(UIColor.white, for:.normal)
        addIngredientButton.backgroundColor = UIColor.blue
        addIngredientButton.layer.cornerRadius = addIngredientButton.bounds.height / 2
        headerImage = UIImage(named:"refrigerator_header")
        headerImageView.image = headerImage
    }


}

