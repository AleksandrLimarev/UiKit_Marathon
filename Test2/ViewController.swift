//
//  ViewController.swift
//  Test2
//
//  Created by Александр Лимарев on 03.03.2023.
//



import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var squareView: UIView!
    @IBOutlet weak var slider: UISlider!
    
    let indent: CGFloat = 20 // the indent for the view and the slider
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = slider.minimumValue
        
        // set initial position and transform of the square view
        let initialX = indent
        let transform = CGAffineTransform(translationX: initialX, y: 0)
        squareView.transform = transform
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        // Calculate the position and transform for the square view based on the current value of the slider
        let xPosition = CGFloat(sender.value) + indent
        let scale = 1 + (CGFloat(sender.value) / CGFloat(sender.maximumValue)) * 0.5 // scale factor between 1 and 1.5 based on the slider value
        let rotationAngle = (CGFloat(sender.value) / CGFloat(sender.maximumValue)) * CGFloat.pi / 2 // rotation angle between 0 and 90 degrees based on the slider value
        let transform = CGAffineTransform(translationX: xPosition, y: 0).scaledBy(x: scale, y: scale).rotated(by: rotationAngle)

        // Update the transform of the square view
        squareView.transform = transform
    }



    
    @IBAction func sliderReleased(_ sender: UISlider) {
        let xPosition = CGFloat(sender.value) + indent // add the indent to the slider value
        let finalX = (xPosition >= view.bounds.width - indent) ? view.bounds.width - indent : indent // calculate the final X position
        let rotationAngle = (finalX == indent) ? 0 : CGFloat.pi/2 // calculate the final rotation angle
        let scaleFactor: CGFloat = (finalX == indent) ? 1 : 1.5 // calculate the final scale factor
        
        UIView.animate(withDuration: 0.5) {
            let transform = CGAffineTransform(translationX: finalX, y: 0)
                .rotated(by: rotationAngle)
                .scaledBy(x: scaleFactor, y: scaleFactor)
            
            self.squareView.transform = transform
        }
    }
}








