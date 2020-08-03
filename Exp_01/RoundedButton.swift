//
//  RoundedButton.swift
//  Exp_01
//
//  Created by Alexander on 03.08.2020.
//  Copyright © 2020 Alexander. All rights reserved.
//

import UIKit

final class RoundedButton: UIButton {

    private var shadowLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 8).cgPath
            shadowLayer.fillColor = #colorLiteral(red: 0, green: 0.6666666667, blue: 0.368627451, alpha: 1)

            shadowLayer.shadowColor = UIColor.darkGray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 0.0, height: 3.0)
            shadowLayer.shadowOpacity = 0.12
            shadowLayer.shadowRadius = 5
            shadowLayer.masksToBounds = false

            layer.insertSublayer(shadowLayer, at: 0)
            //layer.insertSublayer(shadowLayer, below: nil) // also works
        }
    }

}
