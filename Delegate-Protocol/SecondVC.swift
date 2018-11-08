//
//  SecondVC.swift
//  Delegate-Protocol
//
//  Created by apple on 11/8/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

protocol sideSelectionDelegate {
    func didTapChoice(image:UIImage , name:String , color : UIColor)
}





class SecondVC: UIViewController {
    
    var selection_delegate : sideSelectionDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btn1_Tapped(_ sender: Any) {
        selection_delegate.didTapChoice(image: UIImage(named: "vader")!, name: "Darth Vader", color: UIColor.red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btn2_Tapped(_ sender: Any) {
        selection_delegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: UIColor.cyan)
        dismiss(animated: true, completion: nil)
    }
}
