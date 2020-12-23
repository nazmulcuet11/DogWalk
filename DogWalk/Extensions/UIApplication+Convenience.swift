//
//  UIApplication+Convenience.swift
//  DogWalk
//
//  Created by Nazmul's Mac Mini on 23/12/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit

extension UIApplication {
    static var appDelegate: AppDelegate {
        return shared.delegate as! AppDelegate
    }
}
