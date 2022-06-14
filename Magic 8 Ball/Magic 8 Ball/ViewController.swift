//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by adi on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var askMeimageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askMeimageView.image = #imageLiteral(resourceName: "ball3")
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        let allImages = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
        askMeimageView.image = allImages.randomElement()
    }
}
