//
//  Color.swift
//  Refrigerator_iOS
//
//  Created by 土井星太朗 on 2023/11/23.
//

import UIKit

enum Color {
    case vitaminGreen

    var value: UIColor {
        switch self {
            case .vitaminGreen:
                return UIColor(red: 0.07,
                               green: 0.73,
                               blue: 0.22,
                               alpha: 1.0)
        }
    }
}
