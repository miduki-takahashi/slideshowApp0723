//
//  ViewController.swift
//  slideShowApp
//
//  Created by み on 2020/07/10.
//  Copyright © 2020 miduki.takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayImageNo = 0
    var imageNameArray :[UIImage] = [
         UIImage(named:"image0.jpeg")!,UIImage(named:"image1.jpeg")!,UIImage(named:"image3.jpeg")!,UIImage(named:"image4.jpeg")!]
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    //タップした場合
    @IBAction func nextButtonTap(_ sender: Any){
        displayImageNo += 1
        ImageView.image = imageNameArray[displayImageNo]
    }
    let displayImage = "String!"
    
    @IBAction func switchButtonTap(_ sender: Any){
    }
    
    @IBAction func backButtonTap(_ sender: Any){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named:"image0.jpeg")
        // Do any additional setup after loading the view.
        
        var displayImageNo = 0
        
        let imageNameArray = ["image0.jpeg","image1.jpeg","image2.jpg","image3.jpeg","image4.jpeg"]
        
        func displayImage () {
            
            let name = imageNameArray[displayImageNo]
            
           
            
            
        }
        
    }
    
    
    
}
