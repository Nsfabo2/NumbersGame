//
//  ViewController.swift
//  NumbersGame
//
//  Created by Najla on 17/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var Rando = Int.random(in: 1...100)

    @IBOutlet weak var NumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//end
    
    @IBAction func GussButtonClicked(_ sender: Any) {
        if NumberTextField.text?.isEmpty == false{
            if Int(NumberTextField.text!) == Rando{
                let dialog = UIAlertController(title: "Correct", message: "\(NumberTextField.text!) was correct!!", preferredStyle: .alert)
                let no = UIAlertAction(title: "No", style: .default)
                let playAgain = UIAlertAction(title: "Play again", style: .cancel) {(_) -> Void in self.Rando = Int.random(in: 0...100)}
                dialog.addAction(playAgain)
                dialog.addAction(no)
                self.present(dialog, animated: true, completion: nil)
                dialog.view.backgroundColor = UIColor.green
            }
            else{
                let dialog = UIAlertController(title: "Wrong Guess", message: "\(NumberTextField.text!) is wrong guess, you can try again", preferredStyle: .alert)
                let tryAgain = UIAlertAction(title: "Try again", style: .default)
                dialog.addAction(tryAgain)
                self.present(dialog, animated: true, completion: nil)
                dialog.view.backgroundColor = UIColor.red
            }
        }
    }//end button
    

}//end class

