//
//  ViewController.swift
//  Interview
//
//  Created by jackfrow on 2019/5/30.
//  Copyright © 2019 jackfrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        shellSort(sortArray: [21,25,49,25,16,8])
        
        NSLog("shellSorBad start")
        for _ in 0 ..< 100000 {
             shellSorBad(sortArray: [21,25,49,25,16,8])
        }
        NSLog("shellSorBad end")


         NSLog("selectionSort start")
        for _ in 0 ..< 100000 {
             selectionSort(sortArray: [21,25,49,25,16,8])
        }
        NSLog("selectionSort end")


        NSLog("shellSort start")
        for _ in 0 ..< 100000 {
        shellSort(sortArray: [21,25,49,25,16,8])
        }
        NSLog("shellSort end")
        
    }


}

