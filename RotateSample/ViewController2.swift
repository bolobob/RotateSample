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
    let buttonToVC2 = UIButton()

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

        buttonToVC2.setTitle("戻る", forState: .Normal)
        buttonToVC2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        buttonToVC2.layer.borderWidth = 1
        buttonToVC2.layer.cornerRadius = 4
        buttonToVC2.layer.borderColor = UIColor.grayColor().CGColor
        buttonToVC2.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        buttonToVC2.sizeToFit()
        view.addSubview(buttonToVC2)
        buttonToVC2.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraints([
            NSLayoutConstraint(item: buttonToVC2, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.5, constant: 0),
            NSLayoutConstraint(item: buttonToVC2, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -20),
            NSLayoutConstraint(item: buttonToVC2, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0),
            ])

        buttonToVC2.addTarget(self, action: "back:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func back(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
