//
//  SecondViewController.swift
//  CallBackFunction
//
//  Created by Kelvin Tan on 10/20/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var burger: ((_ title: String, _ image: String) -> Void)?
    var sushi: (() -> Void)?
    var spaghetti: (() -> Void)?
    var rice: (() -> Void)?
    
    @IBOutlet weak var burgerImage: UIImageView!
    @IBOutlet weak var sushiImage: UIImageView!
    @IBOutlet weak var spaghettiImage: UIImageView!
    @IBOutlet weak var friedRiceImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    func configureView(){
        burgerImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(burgerSelected)))
        sushiImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(sushiSelected)))
        spaghettiImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(spaghettiSelected)))
        friedRiceImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(riceSelected)))
    }
    
    @objc func burgerSelected(){
        burger?("You've selected burger. \nTotal cost is $10", "burger")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func sushiSelected(){
        sushi?()
        navigationController?.popViewController(animated: true)
    }
    
    @objc func spaghettiSelected(){
        spaghetti?()
        navigationController?.popViewController(animated: true)
    }
    
    @objc func riceSelected(){
        rice?()
        navigationController?.popViewController(animated: true)
    }



}
