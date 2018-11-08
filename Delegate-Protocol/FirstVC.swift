//
//  FirstVC.swift
//  Delegate-Protocol
//
//  Created by apple on 11/8/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    
    @IBOutlet weak var img_mainImageview: UIImageView!
    @IBOutlet weak var lbl_Name: UILabel!
    @IBOutlet weak var btnlbl_choose: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnlbl_choose.layer.cornerRadius = btnlbl_choose.layer.frame.size.height/2
    }
    
    @IBAction func btn_chooseTapped(_ sender: Any) {
        let selectvc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        selectvc.selection_delegate = self
        present(selectvc, animated: true, completion: nil)
    }
}

extension FirstVC : sideSelectionDelegate{
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        img_mainImageview.image = image
        lbl_Name.text = name
        view.backgroundColor = color
    }
    
}
