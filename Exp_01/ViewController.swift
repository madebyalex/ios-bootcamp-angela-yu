//
//  ViewController.swift
//  Exp_01
//
//  Created by Alexander on 02.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var favNumber: UILabel!
    @IBOutlet weak var wrapFavNumber: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        avatar.image = #imageLiteral(resourceName: "Avatar_only_Square_Circle_Transp")
    }

//    override func viewDidAppear(_ animated: Bool) {
//        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "loginVC")
//        present(controller, animated: true, completion: nil)
//    }
    
    @IBAction func showRandomImage(_ sender: UIButton) {
        // print("Button got tapped!");
        
        // Replace the avatar with some random picture
        let arrPictures = ["bear-2", "bee", "chicken-2", "cow", "crab", "deer", "dog", "fish", "fishbone", "ladybug", "octopus", "owl", "panda", "parrot", "penguin", "pig-2", "rabbit", "shark-2", "shrimp", "spider", "turtle"]

//        let randomPic = arrPictures.randomElement()!
//        let randomPic = arrPictures[Int.random(in: 0...arrPictures.count - 1)]
        let randomPic = arrPictures[Int.random(in: 0..<arrPictures.count)]
        avatar.image = UIImage(named: randomPic)
        
        // Generate random fav number
        let randomNumber = Int.random(in: 1...99)
        favNumber.text = String(randomNumber)
        
        // Unhide the favnumber block
        wrapFavNumber.alpha = 1
    }
    

}

