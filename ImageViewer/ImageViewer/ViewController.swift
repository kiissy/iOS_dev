//
//  ViewController.swift
//  ImageViewer
//
//  Created by mbp13 on 2021/11/05.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 6
    
    @IBOutlet var lblImgViewer: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let imageName = String(numImage) + ".png"
        //imgView.image = UIImage(named: imageName)
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        
        if (numImage < 1){
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        
        if (numImage > maxImage){
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}

