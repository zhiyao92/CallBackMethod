//
//  ViewController.swift
//  CallBackFunction
//
//  Created by Kelvin Tan on 10/20/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.isHidden = true
        imageView.isHidden = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        titleLabel.isHidden = false
        imageView.isHidden = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let destination = segue.destination as! SecondViewController
            destination.burger = displayBurger
            destination.sushi = displaySushi
            destination.spaghetti = displaySpaghetti
            destination.rice = displayRice
        }
    }

    func displayBurger(_ title: String, _ image: String){
        titleLabel.text = title
        imageView.image = UIImage(named: image)
    }
    
    func displaySushi(){
        titleLabel.text = "You've selected sushi. \nTotal cost is $8"
        imageView.image = UIImage(named: "sushi")
    }
    
    func displaySpaghetti(){
        titleLabel.text = "You've selected spaghetti. \nTotal cost is $12"
        imageView.image = UIImage(named: "spaghetti")
    }
    
    func displayRice(){
        titleLabel.text = "You've selected fried rice. \nTotal cost is $6"
        imageView.image = UIImage(named: "fried rice")
    }


}

