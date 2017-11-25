//
//  ViewController.swift
//  Chapter03-ImageViewMission
//
//  Created by 그린아카데미 on 2017. 11. 25..
//  Copyright © 2017년 그린아카데미. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageName = ["01.png", "02.png", "03.png", "04.png", "05.png","06.png"]
    var currentIndex = 0
    @IBOutlet weak var img_flower: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_before(_ sender: Any) {
        currentIndex -= 1
        if(currentIndex < imageName.count && currentIndex >= 0){
            img_flower.image = UIImage(named: imageName[currentIndex])
        }else {
            currentIndex += 1
        }
        print("\(currentIndex)")
    }
    
    @IBAction func btn_after(_ sender: Any) {
        currentIndex += 1
        if(currentIndex < imageName.count && currentIndex >= 0){
            img_flower.image = UIImage(named: imageName[currentIndex])
        }else {
            currentIndex -= 1
        }
        print("\(currentIndex)")
    }
}

