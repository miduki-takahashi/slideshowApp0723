//
//  ResultViewController.swift
//  slideShowApp
//
//  Created by み on 2020/07/14.
//  Copyright © 2020 miduki.takahashi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    
    @IBOutlet weak var ImageView: UIImageView!
    var Image = UIImage()
    
    @IBOutlet weak var backButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = Image 
        
    }
      
    @IBAction func BackButton(_ sender: Any){dismiss(animated: true, completion: nil)}

}
