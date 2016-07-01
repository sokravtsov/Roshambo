//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Sergey Kravtsov on 01.07.16.
//  Copyright © 2016 Sergey Kravtsov. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {

    @IBAction private func playRock(sender: UIButton) {
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        vc.userChoice = getUserShape(sender)
        presentViewController(vc, animated: true, completion: nil)
    }
    
        
    @IBAction private func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    
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
