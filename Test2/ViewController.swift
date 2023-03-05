//
//  ViewController.swift
//  Test2
//
//  Created by Александр Лимарев on 03.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the first button
        let firstButton = UIButton(type: .system)
        firstButton.setTitle("First Button", for: .normal)
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = .blue
        firstButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14)
        firstButton.layer.cornerRadius = 10
        firstButton.sizeToFit()
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstButton)

        // Create the second button
        let secondButton = UIButton(type: .system)
        secondButton.setTitle("Second Button", for: .normal)
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.backgroundColor = .blue
        secondButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14)
        secondButton.layer.cornerRadius = 10
        secondButton.sizeToFit()
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondButton)

        // Create the third button
        let thirdButton = UIButton(type: .system)
        thirdButton.setTitle("Third Button", for: .normal)
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .blue
        thirdButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14)
        thirdButton.layer.cornerRadius = 10
        thirdButton.sizeToFit()
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdButton)

        // Add system image view to the right of each button
        let image = UIImage(systemName: "arrow.right.circle.fill")
        firstButton.setImage(image, for: .normal)
        firstButton.imageView?.contentMode = .scaleAspectFit
        firstButton.semanticContentAttribute = .forceRightToLeft
        firstButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)

        secondButton.setImage(image, for: .normal)
        secondButton.imageView?.contentMode = .scaleAspectFit
        secondButton.semanticContentAttribute = .forceRightToLeft
        secondButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)

        thirdButton.setImage(image, for: .normal)
        thirdButton.imageView?.contentMode = .scaleAspectFit
        thirdButton.semanticContentAttribute = .forceRightToLeft
        thirdButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)

        
        // Set the constraints for the buttons
        NSLayoutConstraint.activate([
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 20),
            thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 20),
        ])
    }
}







