//
//  ViewController.swift
//  RotationGesture
//
//  Created by SaiSandeep on 18/11/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageView = UIImageView()
    
    var rotationGesture = UIRotationGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "cat")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 1).isActive = true
        
        rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(self.rotationGestureHandler))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(rotationGesture)
    }
    
    @objc func rotationGestureHandler(recognizer:UIRotationGestureRecognizer){
        if let view = recognizer.view {
            view.transform = view.transform.rotated(by: recognizer.rotation)
            recognizer.rotation = 0
        }
    }

}


