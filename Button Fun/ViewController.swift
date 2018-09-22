//
//  ViewController.swift
//  Button Fun
//
//  Created by Josh Elliott on 9/19/18.
//  Copyright © 2018 JoshElliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSAttributedStringKey.font:
                UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)
        ]
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attributes, range: nameRange)
        statusLabel.attributedText = styledText
    }
}

