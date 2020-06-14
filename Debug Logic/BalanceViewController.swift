//
//  BalanceViewController.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 18/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import UIKit

class BalanceViewController: UIViewController {

    @IBOutlet weak var balanceView: UIView!{
        didSet{
            balanceView.layer.cornerRadius = balanceView.frame.size.height/2
            balanceView.layer.borderWidth = 5
            balanceView.layer.borderColor = UIColor.init(hexString: "#e1e8f2").cgColor
            balanceView.clipsToBounds = true
        }
    }
    @IBOutlet weak var btnViewLedger: UIButton!{
        didSet{
            btnViewLedger.layer.cornerRadius = 5
            btnViewLedger.layer.applyButtonShadow()
//            btnViewLedger.clipsToBounds = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ActViewLedger(_ sender: Any) {
        if let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}





extension CALayer {
    
    func applyButtonShadow(
        color: UIColor = UIColor.lightGray,//init(red: 16/255, green: 119/255, blue: 111/255, alpha: 1),
        alpha: Float = 0.7,
        x: CGFloat = -1,
        y: CGFloat = 3,
        blur: CGFloat = 6,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 1.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }

    
    func applyShadowTxtField(
        color: UIColor = .lightGray,
        alpha: Float = 0.2,
        x: CGFloat = 0,
        y: CGFloat = 1,
        blur: CGFloat = 5,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 1.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}

//MARK: - UIColor Extension
extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
