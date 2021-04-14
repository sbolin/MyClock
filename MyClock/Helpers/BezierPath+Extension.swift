//
//  BezierPath+Extension.swift
//  MyClock
//
//  Created by Scott Bolin on 13-A-21.
//

import SwiftUI

extension UIBezierPath {
    
    //// SecondHand
    static var secondHand: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: -3.84))
        path.addCurve(to: CGPoint(x: -4, y: 0.16), controlPoint1: CGPoint(x: -2.21, y: -3.84), controlPoint2: CGPoint(x: -4, y: -2.05))
        path.addCurve(to: CGPoint(x: 0, y: 4.16), controlPoint1: CGPoint(x: -4, y: 2.37), controlPoint2: CGPoint(x: -2.21, y: 4.16))
        path.addCurve(to: CGPoint(x: 4, y: 0.16), controlPoint1: CGPoint(x: 2.21, y: 4.16), controlPoint2: CGPoint(x: 4, y: 2.37))
        path.addCurve(to: CGPoint(x: 3.78, y: -1.14), controlPoint1: CGPoint(x: 4, y: -0.3), controlPoint2: CGPoint(x: 3.92, y: -0.74))
        path.addCurve(to: CGPoint(x: 0, y: -3.84), controlPoint1: CGPoint(x: 3.24, y: -2.71), controlPoint2: CGPoint(x: 1.75, y: -3.84))
        path.close()
        path.move(to: CGPoint(x: 1.75, y: -75.76))
        path.addCurve(to: CGPoint(x: 3.5, y: -30.42), controlPoint1: CGPoint(x: 1.75, y: -75.22), controlPoint2: CGPoint(x: 2.17, y: -47.35))
        path.addCurve(to: CGPoint(x: 7, y: -0.08), controlPoint1: CGPoint(x: 4.66, y: -15.55), controlPoint2: CGPoint(x: 7, y: -2.1))
        path.addCurve(to: CGPoint(x: 0, y: 7), controlPoint1: CGPoint(x: 7, y: 4.25), controlPoint2: CGPoint(x: 3.5, y: 7))
        path.addCurve(to: CGPoint(x: -7, y: -0.08), controlPoint1: CGPoint(x: -3.5, y: 7), controlPoint2: CGPoint(x: -7, y: 4.25))
        path.addCurve(to: CGPoint(x: -3.5, y: -30.42), controlPoint1: CGPoint(x: -7, y: -2.1), controlPoint2: CGPoint(x: -4.66, y: -15.55))
        path.addCurve(to: CGPoint(x: -1.75, y: -75.76), controlPoint1: CGPoint(x: -2.17, y: -47.35), controlPoint2: CGPoint(x: -1.75, y: -75.22))
        path.addCurve(to: CGPoint(x: -0.18, y: -77.93), controlPoint1: CGPoint(x: -1.75, y: -76.71), controlPoint2: CGPoint(x: -1.09, y: -77.8))
        path.addCurve(to: CGPoint(x: 0, y: -77.94), controlPoint1: CGPoint(x: -0.12, y: -77.94), controlPoint2: CGPoint(x: -0.06, y: -77.94))
        path.addCurve(to: CGPoint(x: 1.75, y: -75.76), controlPoint1: CGPoint(x: 1, y: -77.94), controlPoint2: CGPoint(x: 1.75, y: -76.77))
        path.close()
        return path
    }
    
    //// MinuteHand
    static var minuteHand: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: -4.26))
        path.addCurve(to: CGPoint(x: -4, y: -0.26), controlPoint1: CGPoint(x: -2.21, y: -4.26), controlPoint2: CGPoint(x: -4, y: -2.47))
        path.addCurve(to: CGPoint(x: 0, y: 3.74), controlPoint1: CGPoint(x: -4, y: 1.95), controlPoint2: CGPoint(x: -2.21, y: 3.74))
        path.addCurve(to: CGPoint(x: 4, y: -0.26), controlPoint1: CGPoint(x: 2.21, y: 3.74), controlPoint2: CGPoint(x: 4, y: 1.95))
        path.addCurve(to: CGPoint(x: 3.73, y: -1.71), controlPoint1: CGPoint(x: 4, y: -0.77), controlPoint2: CGPoint(x: 3.91, y: -1.26))
        path.addCurve(to: CGPoint(x: 0, y: -4.26), controlPoint1: CGPoint(x: 3.15, y: -3.2), controlPoint2: CGPoint(x: 1.7, y: -4.26))
        path.close()
        path.move(to: CGPoint(x: 2, y: -66.23))
        path.addCurve(to: CGPoint(x: 4, y: -30.84), controlPoint1: CGPoint(x: 2, y: -65.7), controlPoint2: CGPoint(x: 2.68, y: -47.76))
        path.addCurve(to: CGPoint(x: 7, y: -0.5), controlPoint1: CGPoint(x: 5.17, y: -15.97), controlPoint2: CGPoint(x: 7, y: -2.52))
        path.addCurve(to: CGPoint(x: 0, y: 6.58), controlPoint1: CGPoint(x: 7, y: 3.83), controlPoint2: CGPoint(x: 3.5, y: 6.58))
        path.addCurve(to: CGPoint(x: -7, y: -0.5), controlPoint1: CGPoint(x: -3.5, y: 6.58), controlPoint2: CGPoint(x: -7, y: 3.83))
        path.addCurve(to: CGPoint(x: -4, y: -30.84), controlPoint1: CGPoint(x: -7, y: -2.52), controlPoint2: CGPoint(x: -5.16, y: -15.97))
        path.addCurve(to: CGPoint(x: -2, y: -66.23), controlPoint1: CGPoint(x: -2.67, y: -47.77), controlPoint2: CGPoint(x: -2, y: -65.7))
        path.addCurve(to: CGPoint(x: -0.18, y: -68.4), controlPoint1: CGPoint(x: -2, y: -67.18), controlPoint2: CGPoint(x: -1.11, y: -68.28))
        path.addCurve(to: CGPoint(x: 0, y: -68.42), controlPoint1: CGPoint(x: -0.12, y: -68.41), controlPoint2: CGPoint(x: -0.06, y: -68.42))
        path.addCurve(to: CGPoint(x: 2, y: -66.23), controlPoint1: CGPoint(x: 1, y: -68.42), controlPoint2: CGPoint(x: 2, y: -67.25))
        path.close()
        return path
    }
    
    //// HourHand
    static var hourHand: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: -4.31))
        path.addCurve(to: CGPoint(x: -4, y: -0.31), controlPoint1: CGPoint(x: -2.2, y: -4.31), controlPoint2: CGPoint(x: -4, y: -2.52))
        path.addCurve(to: CGPoint(x: 0, y: 3.69), controlPoint1: CGPoint(x: -4, y: 1.89), controlPoint2: CGPoint(x: -2.2, y: 3.69))
        path.addCurve(to: CGPoint(x: 4, y: -0.31), controlPoint1: CGPoint(x: 2.21, y: 3.69), controlPoint2: CGPoint(x: 4, y: 1.89))
        path.addCurve(to: CGPoint(x: 3.59, y: -2.08), controlPoint1: CGPoint(x: 4, y: -0.95), controlPoint2: CGPoint(x: 3.86, y: -1.55))
        path.addCurve(to: CGPoint(x: 0, y: -4.31), controlPoint1: CGPoint(x: 2.94, y: -3.41), controlPoint2: CGPoint(x: 1.58, y: -4.31))
        path.close()
        path.move(to: CGPoint(x: 2.23, y: -42.67))
        path.addCurve(to: CGPoint(x: 4, y: -22.87), controlPoint1: CGPoint(x: 2.33, y: -41.82), controlPoint2: CGPoint(x: 2.68, y: -39.8))
        path.addCurve(to: CGPoint(x: 7, y: -0.55), controlPoint1: CGPoint(x: 5.17, y: -8), controlPoint2: CGPoint(x: 7, y: -2.57))
        path.addCurve(to: CGPoint(x: 0, y: 6.53), controlPoint1: CGPoint(x: 7, y: 3.77), controlPoint2: CGPoint(x: 3.5, y: 6.53))
        path.addCurve(to: CGPoint(x: -7, y: -0.55), controlPoint1: CGPoint(x: -3.5, y: 6.53), controlPoint2: CGPoint(x: -7, y: 3.77))
        path.addCurve(to: CGPoint(x: -4, y: -22.86), controlPoint1: CGPoint(x: -7, y: -2.57), controlPoint2: CGPoint(x: -5.16, y: -7.99))
        path.addCurve(to: CGPoint(x: -2.15, y: -42.67), controlPoint1: CGPoint(x: -2.67, y: -39.79), controlPoint2: CGPoint(x: -2.25, y: -41.76))
        path.addCurve(to: CGPoint(x: 0.04, y: -44.79), controlPoint1: CGPoint(x: -1.95, y: -44.28), controlPoint2: CGPoint(x: -0.96, y: -44.79))
        path.addCurve(to: CGPoint(x: 2.23, y: -42.67), controlPoint1: CGPoint(x: 0.69, y: -44.79), controlPoint2: CGPoint(x: 2.04, y: -44.28))
        path.close()
        return path
    }
}


