//
//  GameViewController.swift
//  ProyectSecondParcial
//
//  Created by Sebastián  Torres on 22/05/22.
//

import UIKit
//HERE I CREATED THE OBJECT
struct Question{
    var question : String!
    var answers : [String]!
    var answer : String!
    var why : String!
}

class GameViewController: UIViewController {

    //@IBOutlet weak var explaning: UILabel!
    //@IBOutlet weak var result: UILabel!
    @IBOutlet var optionSelected: [UIButton]!
    @IBOutlet weak var qLabel: UILabel!
    @IBOutlet weak var score: UILabel!
    var realAnswer = String()
    var life:Int = 3
    //CREATION FROM VARIABLE TYPE OBJECT
    var questions = [Question]()
    var questionsBackUp = [Question]()
    var position = Int()

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ARRAY FROM OBJECTS
        questions = [Question(question: "¿How many countries does Mexico have?", answers: ["47","52","41"],answer: "47", why: "Mexico has 47 countries"), Question(question: "¿Where is Islas marietas located?", answers: ["Meridad","Nayarit","Acapulco"],answer:"Nayarit" , why: "Islas Marietas is in Nayarit"), Question(question: "¿Is the Arco de la Calzada in Michoacan?", answers: ["yes","Near","No"],answer: "No", why: "Arco de la Calzada is in Leon Guanajuato"), Question(question: "¿Who is the president from Mexico?", answers: ["AMLO","FOX","Peña Nieto"],answer: "AMLO", why: "The actual president is AMLO"), Question(question: "¿Is Tulancingo in Hidalgo ", answers: ["Yes","Near","No"],answer: "Yes", why: "Tulancingo is in Hidalgo"), Question(question: "¿Who was the first president from Mexico", answers: ["Gualalupe Victoria","Orbelin Pineda","Porfirio Dias"],answer:"Gualalupe Victoria" , why: "Gualalupe Victoria was the first president"), Question(question: "¿Is Sonora so cold?", answers: ["yes","Extremely","No"],answer: "yes", why: "The warm is so hot"), Question(question: "¿Which state has winter?", answers: ["Toluca","Guanajuato","Tijuana"],answer: "Toluca", why: "The weather is so windy")]
        questionsBackUp = questions
        sendQuestion ()
        score.text = "❤️❤️❤️"

    }
    func sendQuestion (){
        
        if questions.count > 0{
            position = .random(in: 0...questions.count-1)
            qLabel.text = questions[position].question
            realAnswer = questions[position].answer
    
            for i in 0..<optionSelected.count{
                optionSelected[i].setTitle(questions[position].answers[i], for: UIControl.State.normal)
            }
            questions.remove(at: position)
        }
        else{
            let gameOverAlert = UIAlertController(title:"Game Over", message:"You wanna play again", preferredStyle: UIAlertController.Style.actionSheet)
            gameOverAlert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler:{action in self.resetGame()}))
            gameOverAlert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.destructive, handler: nil))
                present(gameOverAlert,animated: true,completion: nil)
        }
        
    }
    
    //WE GET THE VALUE ANSWER
    @IBAction func destinationPressed(_ propertieBtn: UIButton) {
         var userAnswer = propertieBtn.titleLabel?.text
        
        if life >= 1 {
            if userAnswer == realAnswer{
                //result.text = "CONGRATULATIONS"
            }
            else{
                life -= 1
                //result.text = "WRONG"
            }
            sendQuestion()
            if life == 3 {score.text = "❤️❤️❤️"}
            else if life == 2 {score.text = "😵❤️❤️"}
            else if life == 1 {score.text = "😵😵❤️"}
            else if life == 0 {score.text = "😵"}
        }
        else{
            //explaning.text = "You died"
            let gameOverAlert = UIAlertController(title:"Game Over", message:"You wanna play again", preferredStyle: UIAlertController.Style.actionSheet)
            gameOverAlert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler:{action in self.resetGame()}))
            gameOverAlert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.destructive, handler: nil))
                present(gameOverAlert,animated: true,completion: nil)
        }

    }
    
    func resetGame(){
        questions = questionsBackUp
        life=3
        score.text = "❤️❤️❤️"
    }
    
    func navigateHome(){
        
    }
    
}
