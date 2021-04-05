//
//  CustomButton.swift
//  kutItCustomer
//
//  Created by M.Hashim on 28/08/2019.
//  Copyright © 2019 oranjeclick. All rights reserved.
//


import UIKit
import Foundation

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.masksToBounds = true
    }
    
}

@IBDesignable
class customImage: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.masksToBounds = true
    }
    
}


@IBDesignable
class Customtextfield: UITextField {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var placeholderColor: UIColor = .lightGray {
        didSet { setValue(placeholderColor, forKeyPath: "_placeholderLabel.textColor") }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.masksToBounds = true
    }
    @IBInspectable var padding: CGFloat = 0
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
    }
    
}
@IBDesignable
class CustomGradientView: UIView {

     @IBInspectable var cornerRadius: CGFloat = 0.0 {
         didSet {
             layer.cornerRadius = cornerRadius
         }
     }
     override func layoutSubviews() {
         super.layoutSubviews()
         layer.masksToBounds = true
     }
     @IBInspectable var borderColor: UIColor = .clear {
         didSet {
             layer.borderColor = borderColor.cgColor
         }
     }
     
     @IBInspectable var startColor: UIColor = .clear {
         didSet {
             layer.borderColor = borderColor.cgColor
         }
     }
     
     @IBInspectable var endColor: UIColor = .clear {
         didSet {
             layer.borderColor = borderColor.cgColor
             let gradientLayer:CAGradientLayer = CAGradientLayer()
            gradientLayer.frame = CGRect(x: 0, y: 0, width: self.bounds.width + 50, height: self.bounds.height * 1.5)
              gradientLayer.colors =
              [startColor.cgColor,endColor.withAlphaComponent(1).cgColor]
             //Use diffrent colors
             gradientLayer.startPoint = CGPoint(x:1.0, y: 0.0)
             gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
             self.layer.insertSublayer(gradientLayer, at: 0)
         }
     }
     
     @IBInspectable var borderWidth: CGFloat = 0.0 {
         didSet {
             layer.borderWidth = borderWidth
         }
     }
}

@IBDesignable class CustomView:UIView {
    @IBInspectable var shadowColor: UIColor?{
        set {
            guard let uiColor = newValue else { return }
            layer.shadowColor = uiColor.cgColor
        }
        get{
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var shadowOpacity: Float{
        set {
            layer.shadowOpacity = newValue
        }
        get{
            return layer.shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize{
        set {
            layer.shadowOffset = newValue
        }
        get{
            return layer.shadowOffset
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat{
        set {
            layer.shadowRadius = newValue
        }
        get{
            return layer.shadowRadius
        }
    }
}
import JGProgressHUD


class loading{
    static var hud = JGProgressHUD()
    
    
    class func show(vc:UIViewController){
        hud.textLabel.text = "Loading..."
        hud.show(in: vc.view)

    }
    class func dismiss(){
        hud.dismiss(afterDelay: 0.5)
    }
}
