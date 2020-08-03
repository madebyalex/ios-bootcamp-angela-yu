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
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var btnRandomize: UIButton!
    @IBOutlet weak var mainArea: UIStackView!

    @IBOutlet weak var header: UIView!
    
    @IBOutlet weak var footer: UIStackView!
//    @IBOutlet var switchLanguage: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        header.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        
//        switchLanguage.addTarget(self, action: #selector(.indexChanged(_:)), for: .valueChanged)
    }
    
//    @objc func indexChanged(_ sender: UISegmentedControl) {
//        if switchLanguage.selectedSegmentIndex == 0 {
//            print("Select 0")
//        } else if switchLanguage.selectedSegmentIndex == 1 {
//            print("Select 1")
//        }
//    }
    
    
    @IBAction func showRandomImage(_ sender: UIButton) {
        
        // Replace the avatar with some random picture
        
        let dictPictures = ["bat": "Летучая мышь", "bear": "Медведь", "bee": "Пчела", "bug": "Жук", "butterfly": "Бабочка", "chicken": "Курица", "cow": "Корова", "crab": "Краб", "deer": "Олень", "dog": "Собака", "fish": "Рыба", "horse": "Лошадь", "jellyfish": "Медуза", "ladybug": "Божья коровка", "lobster": "Лобстер", "octopus": "Осьминог", "owl": "Сова", "panda": "Панда", "parrot": "Попугай", "penguin": "Пингвин", "pig": "Свинья", "rabbit": "Кролик", "shark": "Акула", "sheep": "Овца", "shrimp": "Креветка", "sloth": "Ленивец", "snake": "Змея", "spider": "Паук", "turtle": "Черепаха", "wolf": "Волк"]
        
        
        // Show & generate a random animal
        animalName.alpha = 0.9
        
        let randomItemDict = dictPictures.randomElement()!
        avatar.image = UIImage(named: randomItemDict.key)
        animalName.text = randomItemDict.value
        
        
        // Change text of the Randomize button
        btnRandomize.setTitle("SHOW ANOTHER", for: .normal)
    }

}

