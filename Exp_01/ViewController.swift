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
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var btnRandomize: UIButton!
    @IBOutlet weak var mainArea: UIStackView!

    @IBOutlet weak var header: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        avatar.image = #imageLiteral(resourceName: "Avatar_only_Square_Circle_Transp")
        
        
//        UIGraphicsBeginImageContext(self.view.frame.size);
//        [[UIImage imageNamed:@"Bg_gradient3.jpg"] drawInRect:self.view.bounds];
//        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//
//        self.view.backgroundColor = [UIColor colorWithPatternImage:image];
        
        
        header.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
    
    
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "loginVC")
//        present(controller, animated: true, completion: nil)
//    }
    
    
    @IBAction func showRandomImage(_ sender: UIButton) {
        // print("Button got tapped!");
        
        // Replace the avatar with some random picture
        let arrPictures = ["bear", "bee", "chicken", "cow", "crab", "deer", "dog", "fish", "ladybug", "octopus", "owl", "panda", "parrot", "penguin", "pig", "rabbit", "shark", "shrimp", "spider", "turtle"]

//        let randomPic = arrPictures.randomElement()!
//        let randomPic = arrPictures[Int.random(in: 0...arrPictures.count - 1)]
        let randomPic = arrPictures[Int.random(in: 0..<arrPictures.count)]
        avatar.image = UIImage(named: randomPic)
        
        // Generate random fav number
        let randomNumber = Int.random(in: 1...99)
        favNumber.text = String(randomNumber)
        
        // Unhide the favnumber block
        wrapFavNumber.alpha = 1
        
        // Show the animal name
        animalName.alpha = 0.9
        animalName.text = randomPic
        
        // Change text of the Randomize button
        btnRandomize.setTitle("SHOW ANOTHER", for: .normal)
        
    }
    

}

