//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Sergey Kravtsov on 01.07.16.
//  Copyright © 2016 Sergey Kravtsov. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let vc = segue.destinationViewController as! ResultsViewController
            vc.userChoice = getUserShape(sender as! UIButton)
        }
    }
    
    
    private func getUserShape(sender: UIButton) -> Shape {
       
        let shape = sender.titleForState(.Normal)!
        return Shape(rawValue: shape)!
    }
    
}
