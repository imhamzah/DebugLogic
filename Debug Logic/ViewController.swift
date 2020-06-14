//
//  ViewController.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPassword: SkyFloatingLabelTextField!
    @IBOutlet weak var btnLogin: UIButton!{
        didSet{
            btnLogin.layer.cornerRadius = 5
            btnLogin.layer.applyButtonShadow()
//            btnLogin.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ActLogin(_ sender: Any) {
        
//        AuthHelper.shared.LoginUser(txtUsername.text!, txtPassword.text!) { (status, msg) in
//            print(status,msg)
//        }
        
        
        AuthHelper.shared.customerLedger(7) { (status, msg) in
            print(status,msg)
        }
        
        
//        if let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "BalanceViewController") as? BalanceViewController{
//            let aObjNavi = UINavigationController(rootViewController: vc)
//            aObjNavi.modalPresentationStyle = .fullScreen
//            self.present(aObjNavi, animated: true, completion: nil)
//        }

        
    }
    
}

