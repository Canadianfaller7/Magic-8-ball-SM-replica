//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

// this is constant variable with an array of the images inside it
    let ballArray = [#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball8"),#imageLiteral(resourceName: "Pokeball_hellYes"),#imageLiteral(resourceName: "Pokeball_itWillPass"),#imageLiteral(resourceName: "ball6"),#imageLiteral(resourceName: "Pokeball_itIsOk"),#imageLiteral(resourceName: "ball13"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball7"),#imageLiteral(resourceName: "ball14"),#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "Pokeball_hellNo")]
// this is a link between the code and the ball image or the UI
    @IBOutlet weak var imageView: UIImageView!
    
// this is the link for the ask away button and if it is clicked something will happen
    @IBAction func buttonWasTapped(_ sender: UIButton) {
    
/* you can use this code if you want the code to print a specific image from your array once the ask button is clicked
        imageView.image = ballArray[3] */
        
/* this makes the ballArray show the arrayPictures randomly when the button is clicked
        imageView.image = ballArray[Int.random(in: 0...4)] */
        
// this is a simpler way to write the code above
        imageView.image = ballArray.randomElement()
       

    }
// this makes it so you can shake your phone and it will change the images instead of clicking a button
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        imageView.image = ballArray.randomElement()
     

    }
    
    // this is code to say do something when the app is loaded
        override func viewDidLoad() {
            super.viewDidLoad()
    // this will show a different answer each time the app runs instead of just YES
            imageView.image = ballArray.randomElement()
            
    }
}



