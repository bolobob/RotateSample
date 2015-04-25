//
//  ViewController.swift
//  RotateSample
//
//  Created by 青木 真一 on 2015/04/23.
//  Copyright (c) 2015年 bolobob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

