//
//  ViewController.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/03.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var addIngredientButton: UIButton!
    @IBOutlet weak var IngredientTableView: UITableView!
    var headerImage: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addIngredientButton.setTitleColor(UIColor.white, for:.normal)
        addIngredientButton.backgroundColor = UIColor.blue
        addIngredientButton.layer.cornerRadius = addIngredientButton.bounds.height / 2
        headerImage = UIImage(named:"refrigerator_header")
        headerImageView.image = headerImage
//         The definitions of ingredientTable
        let ingredientCellXib = UINib(nibName:"IngredientTableViewCell", bundle:nil)
        IngredientTableView.register(ingredientCellXib, forCellReuseIdentifier:"IngredientCell")
        IngredientTableView.rowHeight = 60
    }
    let data = IngredientModels.sampleData
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath as IndexPath) as! IngredientTableViewCell

        cell.nameLabel.text = data[indexPath.row].name
        cell.weightLabel.text = data[indexPath.row].weight.description + "g"


            return cell
    }
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return data.count
    }

}

