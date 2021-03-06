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
    var highScore = 0
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
    @IBOutlet weak var Eric1: UIImageView!
    @IBOutlet weak var Eric2: UIImageView!
    @IBOutlet weak var Eric3: UIImageView!
    @IBOutlet weak var Eric4: UIImageView!
    @IBOutlet weak var Eric5: UIImageView!
    @IBOutlet weak var Eric6: UIImageView!
    @IBOutlet weak var Eric7: UIImageView!
    @IBOutlet weak var Eric8: UIImageView!
    @IBOutlet weak var Eric9: UIImageView!
    @IBOutlet weak var Stan1: UIImageView!
    @IBOutlet weak var Stan2: UIImageView!
    @IBOutlet weak var Stan3: UIImageView!
    @IBOutlet weak var Stan4: UIImageView!
    @IBOutlet weak var Stan5: UIImageView!
    @IBOutlet weak var Stan6: UIImageView!
    @IBOutlet weak var Stan7: UIImageView!
    @IBOutlet weak var Stan8: UIImageView!
    @IBOutlet weak var Stan9: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabelUpdate(score: score)
        
        
        let storedHighScore = UserDefaults.standard.object(forKey: "highscore")
        
        if storedHighScore == nil {
            HighscoreLabel.text = "Highscore : 0"
        }
        
        if let newScore = storedHighScore as? Int {
            HighscoreLabel.text = "Highscore : \(newScore)"
        }
        
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
        Eric1.isUserInteractionEnabled = true
        Eric2.isUserInteractionEnabled = true
        Eric3.isUserInteractionEnabled = true
        Eric4.isUserInteractionEnabled = true
        Eric5.isUserInteractionEnabled = true
        Eric6.isUserInteractionEnabled = true
        Eric7.isUserInteractionEnabled = true
        Eric8.isUserInteractionEnabled = true
        Eric9.isUserInteractionEnabled = true
        Stan1.isUserInteractionEnabled = true
        Stan2.isUserInteractionEnabled = true
        Stan3.isUserInteractionEnabled = true
        Stan4.isUserInteractionEnabled = true
        Stan5.isUserInteractionEnabled = true
        Stan6.isUserInteractionEnabled = true
        Stan7.isUserInteractionEnabled = true
        Stan8.isUserInteractionEnabled = true
        Stan9.isUserInteractionEnabled = true
        
        
        
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
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer17 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer18 = UITapGestureRecognizer(target: self, action: #selector(decraseScore))
        let recognizer19 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer20 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer21 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer22 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer23 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer24 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer25 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer26 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        let recognizer27 = UITapGestureRecognizer(target: self, action: #selector(increaseTime))
        
        kenny1.addGestureRecognizer(recognizer1)
        kenny2.addGestureRecognizer(recognizer2)
        kenny3.addGestureRecognizer(recognizer3)
        kenny4.addGestureRecognizer(recognizer4)
        kenny5.addGestureRecognizer(recognizer5)
        kenny6.addGestureRecognizer(recognizer6)
        kenny7.addGestureRecognizer(recognizer7)
        kenny8.addGestureRecognizer(recognizer8)
        kenny9.addGestureRecognizer(recognizer9)
        Eric1.addGestureRecognizer(recognizer10)
        Eric2.addGestureRecognizer(recognizer11)
        Eric3.addGestureRecognizer(recognizer12)
        Eric4.addGestureRecognizer(recognizer13)
        Eric5.addGestureRecognizer(recognizer14)
        Eric6.addGestureRecognizer(recognizer15)
        Eric7.addGestureRecognizer(recognizer16)
        Eric8.addGestureRecognizer(recognizer17)
        Eric9.addGestureRecognizer(recognizer18)
        Stan1.addGestureRecognizer(recognizer19)
        Stan2.addGestureRecognizer(recognizer20)
        Stan3.addGestureRecognizer(recognizer21)
        Stan4.addGestureRecognizer(recognizer22)
        Stan5.addGestureRecognizer(recognizer23)
        Stan6.addGestureRecognizer(recognizer24)
        Stan7.addGestureRecognizer(recognizer25)
        Stan8.addGestureRecognizer(recognizer26)
        Stan9.addGestureRecognizer(recognizer27)
        
        characterArray = [kenny1,kenny2,kenny3,kenny4,kenny5,kenny6,kenny7,kenny8,kenny9,Eric1,Eric2,Eric3,Eric4,Eric5,Eric6,Eric7,Eric8,Eric9,Stan1,Stan2,Stan3,Stan4,Stan5,Stan6,Stan7,Stan8,Stan9]
        hideAllCharacters()
        characterArray[1].isHidden = false
        characterArray[9].isHidden = false
        characterArray[20].isHidden = false
       
        
        
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let startGameAlert = UIAlertController(title: "Start Game", message: "Do you want start to game ?", preferredStyle: UIAlertController.Style.alert)
        let StartGameButton = UIAlertAction(title: "Start Game", style: UIAlertAction.Style.default) { UIAlertAction in
            //MARK: Timer
            self.counter = 5
            self.TimeLabel.text = "\(self.counter)"
            
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(self.countDown) , userInfo: nil, repeats: true)
            self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideCharacter), userInfo: nil, repeats: true)
            self.hideCharacter()
        }
        let quitGameButton = UIAlertAction(title: "Quit Game", style: UIAlertAction.Style.cancel) { UIAlertAction in
            exit(0)
            
        }
        startGameAlert.addAction(StartGameButton)
        startGameAlert.addAction(quitGameButton)
        self.present(startGameAlert, animated: true, completion: nil)
    }
    
    func scoreLabelUpdate(score : Int){
        ScoreLabel.text = "Score : \(score)"
    }

    
    @objc func increaseScore(){
        score += 1
        scoreLabelUpdate(score: score)
    }
    @objc func decraseScore(){
        score -= 1
        scoreLabelUpdate(score: score)
    }
    @objc func increaseTime(){
        counter += 2
        TimeLabel.text = "\(counter)"
    }
    
    
    // countdown control
    @objc func countDown(){
        counter -= 1
        TimeLabel.text = String(counter)
      
        
        if counter == 0{
            timer.invalidate()
            hideTimer.invalidate()
            hideAllCharacters()
            if self.score > self.highScore {
                self.highScore = self.score
                HighscoreLabel.text = "Highscore : \(self.highScore)"
                UserDefaults.standard.set(self.highScore, forKey: "highscore")
            }
            
            //Alert
            let alert = UIAlertController(title: "Time's up. Your score is = \(score)", message: "Do you want to play again ? ", preferredStyle: UIAlertController.Style.alert)
            let okButtonAlert = UIAlertAction(title: "Quit Game", style: UIAlertAction.Style.cancel) { UIAlertAction in
                exit(0)
            }
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                self.score = 0
                self.scoreLabelUpdate(score: self.score)
                self.counter = 5
                self.TimeLabel.text = String(self.counter)
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(self.countDown) , userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideCharacter), userInfo: nil, repeats: true)
            }
            alert.addAction(okButtonAlert)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    @objc func hideCharacter(){
       hideAllCharacters()
        let random = (Int)(arc4random_uniform(UInt32(characterArray.count-1)))
        characterArray[random].isHidden = false
    }
    
    func hideAllCharacters(){
        for character in characterArray {
            character.isHidden = true
        }
    }
}

