//
//  ViewController.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/07/03.
//

//import UIKit
//
//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    var selectedTags = [String]()
//    @IBOutlet weak var headerImageView: UIImageView!
//    @IBOutlet weak var addIngredientButton: UIButton!
//    @IBAction func addIngredient(_ sender: UIButton) {
//        let modalStoryboard = UIStoryboard(name: "addIngredientModal", bundle: nil)
//        let modalVC = modalStoryboard.instantiateViewController(withIdentifier: "addIngredientModal")
//        modalVC.modalPresentationStyle = .formSheet
//        present(modalVC, animated: true)
//    }
//    @IBOutlet weak var IngredientTableView: UITableView!
//    var headerImage: UIImage!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        addIngredientButton.setTitleColor(UIColor.white, for:.normal)
//        addIngredientButton.backgroundColor = UIColor.blue
//        addIngredientButton.layer.cornerRadius = addIngredientButton.bounds.height / 2
//        headerImage = UIImage(named:"refrigerator_header")
//        headerImageView.image = headerImage
////         The definitions of ingredientTable
//        let ingredientCellXib = UINib(nibName:"IngredientTableViewCell", bundle:nil)
//        IngredientTableView.register(ingredientCellXib, forCellReuseIdentifier:"IngredientCell")
//        IngredientTableView.rowHeight = 72
//    }
//    let IngredientData = IngredientModels.sampleData
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath as IndexPath) as! IngredientTableViewCell
//
//        cell.nameLabel.text = IngredientData[indexPath.row].name
//        cell.weightLabel.text = IngredientData[indexPath.row].weight.description + "g"
//        createNutritionTags(cell: cell, data: IngredientData[indexPath.row])
//        // タグ設定
//            return cell
//    }
//    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
//        return IngredientData.count
//    }
//    func createNutritionTags(cell: IngredientTableViewCell, data: IngredientModels){
//        let colorDict = ["タンパク質": ["背景色": UIColor.red, "文字色": UIColor.white],"ビタミン": ["背景色": UIColor.green, "文字色": UIColor.black],"ミネラル": ["背景色": UIColor.blue, "文字色": UIColor.white],"脂質": ["背景色": UIColor.yellow, "文字色": UIColor.black],"炭水化物": ["背景色": UIColor.white, "文字色": UIColor.black]]
//        cell.exceedLabel.text = ""
//        if data.nutritions.count == 1{
//            (cell.tagIcon2.text, cell.tagIcon3.text, cell.tagIcon4.text, cell.tagIcon5.text) = ("","","","")
//            let nutName = data.nutritions[0].nutrition
//            cell.tagIcon.text = nutName
//            cell.tagIcon.backgroundColor = colorDict[nutName]?["背景色"]
//            cell.tagIcon.textColor = colorDict[nutName]?["文字色"]
//            cell.tagIcon.font = UIFont.systemFont(ofSize:10)
//            cell.tagIcon.layer.cornerRadius = 6
//            cell.tagIcon.clipsToBounds = true
//        }else if data.nutritions.count == 2{
//            (cell.tagIcon.text, cell.tagIcon4.text,  cell.tagIcon5.text) = ("","","")
//            let nutName = data.nutritions[0].nutrition
//            let nutName2 = data.nutritions[1].nutrition
//            (cell.tagIcon2.text, cell.tagIcon3.text) = (nutName, nutName2)
//            (cell.tagIcon2.backgroundColor,cell.tagIcon3.backgroundColor) = (colorDict[nutName]?["背景色"],colorDict[nutName2]?["背景色"])
//            (cell.tagIcon2.textColor,cell.tagIcon3.textColor) = (colorDict[nutName]?["文字色"],colorDict[nutName2]?["文字色"])
//            (cell.tagIcon2.font, cell.tagIcon3.font) = (UIFont.systemFont(ofSize:10), UIFont.systemFont(ofSize:10))
//            (cell.tagIcon2.layer.cornerRadius, cell.tagIcon3.layer.cornerRadius) = (6, 6)
//            (cell.tagIcon2.clipsToBounds, cell.tagIcon3.clipsToBounds) = (true, true)
//        }else{
//            (cell.tagIcon2.text, cell.tagIcon3.text) = ("","")
//            let nutName = data.nutritions[0].nutrition
//            let nutName2 = data.nutritions[1].nutrition
//            let nutName3 = data.nutritions[2].nutrition
//            (cell.tagIcon.text, cell.tagIcon4.text, cell.tagIcon5.text) = (nutName, nutName2, nutName3)
//            (cell.tagIcon.backgroundColor, cell.tagIcon4.backgroundColor, cell.tagIcon5.backgroundColor) = (colorDict[nutName]?["背景色"], colorDict[nutName2]?["背景色"], colorDict[nutName3]?["背景色"])
//            (cell.tagIcon.textColor, cell.tagIcon4.textColor, cell.tagIcon5.textColor) = (colorDict[nutName]?["文字色"], colorDict[nutName2]?["文字色"], colorDict[nutName3]?["文字色"])
//            (cell.tagIcon.font, cell.tagIcon4.font, cell.tagIcon5.font) = (UIFont.systemFont(ofSize:10), UIFont.systemFont(ofSize:10), UIFont.systemFont(ofSize:10))
//            (cell.tagIcon.layer.cornerRadius, cell.tagIcon4.layer.cornerRadius, cell.tagIcon5.layer.cornerRadius) = (6, 6, 6)
//            (cell.tagIcon.clipsToBounds, cell.tagIcon4.clipsToBounds, cell.tagIcon5.clipsToBounds) = (true, true, true)
//            if data.nutritions.count >= 4{
//                cell.exceedLabel.text = "and more ..."
//            }
//        }
//    }
//}

