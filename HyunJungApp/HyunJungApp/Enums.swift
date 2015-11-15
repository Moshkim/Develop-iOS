//
//  Enums.swift
//  HyungJungApp
//
//  Created by KWANIL KIM on 11/14/15.
//  Copyright © 2015 University of California, Davis. All rights reserved.
//

import Foundation
import UIKit

class helper {

    static func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)


    }
}