//
//  ViewController2.swift
//  RotateSample
//
//  Created by 青木 真一 on 2015/04/25.
//  Copyright (c) 2015年 bolobob. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGrayColor()
        label.text = "RotateSample"
        label.sizeToFit()
        view.addSubview(label)
        label.setTranslatesAutoresizingMaskIntoConstraints(false)
        let constraints = [
            NSLayoutConstraint(item: label, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: label, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0),
        ]
        view.addConstraints(constraints)
    }

}
