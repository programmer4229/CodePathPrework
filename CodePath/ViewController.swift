//
//  ViewController.swift
//  CodePath
//
//  Created by Gaby Gonzalez on 1/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    @IBAction func changeFonts(_ sender: UIButton) {
        let font = changeFont()
        nameLabel.font = font
        schoolLabel.font = font
        jobLabel.font = font
    }
    
    func changeFont() -> UIFont {
        let rand = Int.random(in: 0...3)
        var font = "Helvetica"
        if rand == 0 {
            font = "American Typewriter"
        } else if rand == 1 {
            font = "Verdana"
        } else if rand == 2 {
            font = "Copperplate"
        }
        
        return UIFont(name: font, size: 16) ?? UIFont(name:"Helvetica", size: 16)!
    }
}

