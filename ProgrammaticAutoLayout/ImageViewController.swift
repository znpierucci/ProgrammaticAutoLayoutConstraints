//
//  ImageViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Zachary Pierucci on 2/12/19.
//  Copyright © 2019 Zachary Pierucci. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var myImage = UIImageView()
    var myCaption = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        myImage.image = UIImage(named: "frank.png")
        myImage.contentMode = .scaleAspectFit
        view.addSubview(myImage)
        myImage.translatesAutoresizingMaskIntoConstraints = false
        
        myCaption.text = "Frank Ocean"
        myCaption.sizeToFit()
        myCaption.contentMode = .scaleAspectFit
        view.addSubview(myCaption)
        myCaption.translatesAutoresizingMaskIntoConstraints = false
        
        
        //Image Constraints
        NSLayoutConstraint(item: myImage, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10.0).isActive = true
        
        NSLayoutConstraint(item: myImage, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10.0).isActive = true
        
        NSLayoutConstraint(item: myImage, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 10.0).isActive = true
        
        NSLayoutConstraint(item: myImage, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 10.0).isActive = true
 
        //Caption Constraints
        NSLayoutConstraint(item: myCaption, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 100.0).isActive = true
        
        NSLayoutConstraint(item: myCaption, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -5.0).isActive = true
        
        NSLayoutConstraint(item: myCaption, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 5.0).isActive = true
        
        NSLayoutConstraint(item: myCaption, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -5.0).isActive = true

        let centerX = NSLayoutConstraint(item: myCaption, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let underImage = NSLayoutConstraint(item: myCaption, attribute: .top, relatedBy: .equal, toItem: myImage, attribute: .top, multiplier: 1.0, constant: 10.0)
        let toBottom = NSLayoutConstraint(item: myCaption, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -10.0)
        view.addConstraints([centerX, underImage])
         */
        
        
        //Image
        myImage.contentMode = .scaleAspectFit
        myImage.image = UIImage(named: "frank")
        
        //Caption
        myCaption.backgroundColor = UIColor.yellow
        myCaption.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        myCaption.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        myCaption.text = "Frank Ocean"
        myCaption.textAlignment = .center
        
        //StackView
        let stackView = UIStackView()
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing = 10.0
        
        stackView.addArrangedSubview(myImage)
        stackView.addArrangedSubview(myCaption)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        //Constraints
        NSLayoutConstraint(item: stackView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 10.0).isActive = true

        NSLayoutConstraint(item: stackView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -10.0).isActive = true

        NSLayoutConstraint(item: stackView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 10.0).isActive = true

        NSLayoutConstraint(item: stackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -10.0).isActive = true

    }
    
}
