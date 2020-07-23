//
//  ViewController.swift
//  slideShowApp
//
//  Created by み on 2020/07/10.
//  Copyright © 2020 miduki.takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var displayImageNo = 0
    var timer: Timer!
    var imageNameArray :[UIImage] = [
        UIImage(named:"image0")!,UIImage(named:"image1")!,UIImage(named:"image3")!,UIImage(named:"image4")!]
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var tapAction: UITapGestureRecognizer!
    func unwind(_ segue: UIStoryboard){
        
    }
    @IBAction func tapImage(_ sender: Any) {
        if (self.timer != nil){
            return
        }else{
            performSegue(withIdentifier: "result", sender: nil)}
    }
    
    //タップした場合
    @IBAction func nextButtonTap(_ sender: Any){
        displayImageNo += 1
        if (displayImageNo == imageNameArray.count){
            displayImageNo = 0
        }
        ImageView.image = imageNameArray[displayImageNo]
        
    }

    @IBAction func switchButtonTap(_ sender: Any){
        
        if (self.timer == nil)
        {self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            backButton.isEnabled = false//ボタン押せない
            nextButton.isEnabled = false//ボタン押せない
            
            switchButton.setTitle("停止",for : .normal)
        } else {
            self.timer.invalidate()//タイマー停止
            self.timer = nil
            backButton.isEnabled = true//ボタン押せる
            nextButton.isEnabled = true//ボタン押せる
            switchButton.setTitle("再生",for : .normal)
        }
    }
    
    @objc func updateTimer(_ timer: Timer) {
        displayImageNo += 1
        if (displayImageNo == imageNameArray.count){
            displayImageNo = 0
            
        }
        ImageView.image = imageNameArray[displayImageNo]
    }
    
    @IBAction func backButtonTap(_ sender: Any){
        displayImageNo -= 1
        if (displayImageNo == -1){
            displayImageNo = imageNameArray.count-1
        }
        ImageView.image = imageNameArray[displayImageNo]
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.Image = imageNameArray[displayImageNo]}

}


