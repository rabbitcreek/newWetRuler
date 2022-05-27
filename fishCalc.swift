//
//  fishCalc.swift
//  window
//
//  Created by RobertW. on 5/24/22.
//

import Foundation
import SwiftUI

class fishyCalc {
    var aNumber: Double = 0.0
    var bNumber: Double = 0.0
    var finalDist: Double = 0.0
    let fishHolder: [[Double]] = [[ 0.0089, 3.25], [ 0.1408, 3.00], [0.0112,3.0], [0.01555, 3], [0.01333,3], [0.0102,3.03], [ 0.02111,3.0],[0.01384,3.00], [0.0071,3.10], [0.0,0.0]]
    
     func fishFinder(keyNumber: Int, distNumber: Double) -> Double{
        aNumber = fishHolder[keyNumber][0]
        bNumber = fishHolder[keyNumber][1]
        finalDist =  log10(aNumber) + bNumber * log10(distNumber)
        finalDist = (pow(10, finalDist)/1000.0) * 2.2
        return finalDist
    }
}
