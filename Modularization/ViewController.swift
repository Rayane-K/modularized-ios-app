//
//  ViewController.swift
//  Modularization
//
//  Created by Kurrimboccus Rayane on 09/04/2019.
//  Copyright © 2019 Kurrimboccus Rayane. All rights reserved.
//

import UIKit

// to use classes from a module you have to import it, after declaring it in the scheme and build phases of this target
import BigModule

class ViewController: UIViewController {
    @IBOutlet var leftImageView: UIImageView!
    @IBOutlet var rightImageView: UIImageView!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // By using image literals, you are using the MAIN BUNDLE. This image is contained in the main bundle so this will work
        leftImageView.image = #imageLiteral(resourceName: "man")
        
        // This image is contained in the BigModule target bundle. So you have to specify the bundle when instantiating it or it will crash
        rightImageView.image = UIImage(named: "woman", in: Bundle.bigModule, compatibleWith: nil)
        
        firstLabel.text = MainAppClass.mainAppText
        secondLabel.text = BigModuleClass.bigModuleText
        thirdLabel.text = BigModuleClass.littleModuleText
    }


}

