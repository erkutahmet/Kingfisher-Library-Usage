//
//  ViewController.swift
//  Kingfisher Library Usage
//
//  Created by Ahmet Erkut on 26.10.2023.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage(imageName: "kofte.png")
    }

    @IBAction func buttonImage1(_ sender: Any) {
        showImage(imageName: "ayran.png")
    }
    
    @IBAction func buttonImage2(_ sender: Any) {
        showImage(imageName: "su.png")
    }
    
    func showImage(imageName: String) {
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(imageName)") {
            DispatchQueue.main.async {
                self.imageView.kf.setImage(with: url)
            }
        }
    }
}

