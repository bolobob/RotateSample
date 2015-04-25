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
    let buttonToBack = UIButton()

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

        buttonToBack.setTitle("戻る", forState: .Normal)
        buttonToBack.setTitleColor(UIColor.blackColor(), forState: .Normal)
        buttonToBack.layer.borderWidth = 1
        buttonToBack.layer.cornerRadius = 4
        buttonToBack.layer.borderColor = UIColor.grayColor().CGColor
        buttonToBack.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        buttonToBack.sizeToFit()
        view.addSubview(buttonToBack)
        buttonToBack.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addConstraints([
            NSLayoutConstraint(item: buttonToBack, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.5, constant: 0),
            NSLayoutConstraint(item: buttonToBack, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -20),
            NSLayoutConstraint(item: buttonToBack, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0),
            ])

        buttonToBack.addTarget(self, action: "back:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func back(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
