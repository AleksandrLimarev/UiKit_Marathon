//
//  ViewController.swift
//  Test2
//
//  Created by Александр Лимарев on 03.03.2023.
//

import UIKit

class SquareView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }

  private func setupView() {
    backgroundColor = .clear

    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
    gradientLayer.frame = bounds
    gradientLayer.cornerRadius = 20
    layer.insertSublayer(gradientLayer, at: 0)

    layer.cornerRadius = 20
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.8
    layer.shadowRadius = 10
    layer.shadowOffset = CGSize(width: 0, height: 10)
  }

  override func layoutSubviews() {
    super.layoutSubviews()

    if let sublayers = layer.sublayers {
      for sublayer in sublayers {
        sublayer.frame = bounds
      }
    }
  }
}

class ViewController: UIViewController {

  var squareView: SquareView!

  override func viewDidLoad() {
    super.viewDidLoad()

    squareView = SquareView(frame: CGRect(x: 100, y: 0, width: 100, height: 100))
    squareView.center.y = view.center.y
    view.addSubview(squareView)
  }

  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)

    coordinator.animate(alongsideTransition: { _ in
      let statusBarHeight = self.view.window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
      let yPosition = (size.height - statusBarHeight - self.squareView.frame.height) / 2.0
      let xPosition = min(100, (size.width - self.squareView.frame.width) / 2.0)

      self.squareView.frame.origin = CGPoint(x: xPosition, y: yPosition)
    }, completion: nil)
  }
}





