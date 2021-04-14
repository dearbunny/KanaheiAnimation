//
//  ViewController.swift
//  Kanahei Animation 兔兔要吃飯
//
//  Created by Rose on 2021/4/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //製作漸層畫面

        let gradientView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 926))
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [
            UIColor(red: 1, green: 113/255, blue: 154/155, alpha: 1).cgColor,
            UIColor(red: 1, green: 169/255, blue: 159/155, alpha: 1).cgColor,
            UIColor(red: 1, green: 226/255, blue: 159/255, alpha: 1).cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        // 載入動畫
        guard let url = Bundle.main.url(forResource: "15281900@2x", withExtension: "png") else { return }
        let cfUrl = url as CFURL
        CGAnimateImageAtURLWithBlock(cfUrl, nil) { (_, cgImage, _) in
            self.imageView.image = UIImage(cgImage: cgImage)
       }
    }


}

