//
//  ViewController.swift
//  CatchKenny
//
//  Created by Akın Aksoy on 3.03.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Variables
    var score = 0
    var timer = Timer()
    var counter = 0
    var characterArray = [UIImageView]()
    var hideTimer = Timer()
    
    //MARK: Views
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var HighscoreLabel: UILabel!
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    @IBOutlet weak var kenny7: UIImageView!
    @IBOutlet weak var kenny8: UIImageView!
    @IBOutlet weak var kenny9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabelUpdate(score: score)
        
        //MARK: User Interaction
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        kenny7.isUserInteractionEnabled = true
        kenny8.isUserInteractionEnabled = true
        kenny9.isUserInteractionEnabled = true
        
        //MARK: Recognizers
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        
        characterArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9]
        
        //MARK: Timer
        counter = 10
        TimeLabel.text = "\(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(countDown) , userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(hideCharacter), userInfo: nil, repeats: true)
        hideCharacter()
    }

    
    func scoreLabelUpdate(score : Int){
        ScoreLabel.text = "Score : \(score)"
    }

    
    @objc func increaseScore(){
        score += 1
        scoreLabelUpdate(score: score)
    }
    
    // countdown control
    @objc func countDown(){
        counter -= 1
        TimeLabel.text = String(counter)
        for character in characterArray {
            character.isHidden = true
        }
        
        if counter == 0{
            timer.invalidate()
            hideTimer.invalidate()
            
            let alert = UIAlertController(title: "Time's up. Your score is = \(score)", message: "Do you want to play again ? ", preferredStyle: UIAlertController.Style.alert)
            let okButtonAlert = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                
            }
            alert.addAction(okButtonAlert)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    @objc func hideCharacter(){
        for character in characterArray {
            character.isHidden = true
        }
        let random = (Int)(arc4random_uniform(UInt32(characterArray.count-1)))
        characterArray[random].isHidden = false
    }
    
    
}

