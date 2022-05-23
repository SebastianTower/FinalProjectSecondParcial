//
//  SecondViewController.swift
//  ProyectSecondParcial
//
//  Created by Sebastián  Torres on 05/04/22.
//

import UIKit

class SecondViewController: UIViewController {

   /* @IBOutlet var btnOne:UIButton!
    @IBOutlet var btnTwo:UIButton!
    @IBOutlet var btnThree:UIButton!*/
    
    struct City{
        var cityname: String;
        var cityImage: String;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let friends = [City(cityname: "Leon",cityImage: "Leon.png"),
        City(cityname: "Nuevo Leon",cityImage: "SanPredro.png")]

        
        //let hover = UIHoverGestureRecognizer(target: self, action: #selector(hovering(_:)))
          //      button.addGestureRecognizer(hover)
        
      /*  btnOne.backgroundColor = .clear
        btnOne.layer.cornerRadius = 30
        btnOne.layer.borderWidth = 1
        btnOne.layer.borderColor = UIColor.white.cgColor
        
        btnTwo.backgroundColor = .clear
        btnTwo.layer.cornerRadius = 30
        btnTwo.layer.borderWidth = 1
        btnTwo.layer.borderColor = UIColor.white.cgColor
        
        picThree.backgroundColor = .clear
        picThree.layer.cornerRadius = 30
        picThree.layer.borderWidth = 1
        picThree.layer.borderColor = UIColor.white.cgColor*/
      
    }
   /* @objc
       func hovering(_ recognizer: UIHoverGestureRecognizer) {
           switch recognizer.state {
           case .began, .changed:
               //picOne.titleLabel?.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
               picOne.backgroundColor?.ciColor = .red
           case .ended:
               picOne.titleLabel?.textColor = UIColor.link
           default:
               break
           }
       }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
