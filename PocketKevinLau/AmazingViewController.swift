//
//  ViewController.swift
//  PocketKevinLau
//
//  Created by xue qi liao on 5/21/19.
//  Copyright © 2019 xue qi liao. All rights reserved.
//

import UIKit

class AmazingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let heartGif = UIImage.gifImageWithName("heartpoosh")
        let imageView = UIImageView(image: heartGif)
        imageView.frame = CGRect(x: 20.0, y: 50.0, width: 100, height: 100)
        view.addSubview(imageView)
    }
}
