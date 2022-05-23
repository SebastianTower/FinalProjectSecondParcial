//
//  PriceViewController.swift
//  ProyectSecondParcial
//
//  Created by Sebastián  Torres on 05/05/22.
//

import UIKit

class PriceViewController: UIViewController {

    @IBOutlet weak var selectedDestinationBtn: UIButton!
    @IBOutlet var destinationbtnCollection: [UIButton]!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var days: UITextField!
    
    //AQUI HACEMOS LA CONECCION DEL PERFORMANCE SEGUE
    @IBAction func goDetail(_ sender: Any) {
        let placeSelected = place.text ?? ""
        let daysSelected = days.text ?? ""
        let peopleSelected = people.text ?? ""
        let numPeople = Double(peopleSelected) ?? 0
        let numDays = Double(daysSelected) ?? 0
        
        var total:Double = 0
        
        //PASAMOS EL SECOND VC A UNA VARIABLE
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "detailBuyVC") as! DetailBuyViewController
        //let sendImage:String?
        
        if placeSelected == "Nuevo Leon"{
            total = 2000 * numDays * numPeople
            /*sendImage = "Nuevo-León"
            controller.imageContent.image = UIImage(named: "Nuevo-León"
            controller.placeInImage = sendImage)*/
        }
        else if placeSelected == "Guanajuato"{
            total = 1500 * numDays * numPeople
            //sendImage = "Gto"
            /*controller.imageContent.image = UIImage(named: "Gto")*/
        }
        else if placeSelected == "Cancun"{
            total = 3000 * numDays * numPeople
            /*controller.imageContent?.image = UIImage(named: "cancun")*/

        }
        else if placeSelected == "Nayarit"{
            total = 2200 * numDays * numPeople
            /*controller.imageContent.image = UIImage(named: "Nayarit")*/
        }
       
        if place.text?.isEmpty == false && days.text?.isEmpty == false && people.text?.isEmpty == false && name.text?.isEmpty == false && lastName.text?.isEmpty == false{
            //LE INICIALIZAMOS LA PROPIEDAD DEL SVC CON EL TEXTO DEL TEXTFIELD
            controller.tripDesc = "Name: \(name.text!) Last Name: \( lastName.text!) Place: \(place.text!) People: \( people.text!) person Days: \( days.text!) Total Price: \(total)"
            //PRESENTAMOS EL TEXTO
                controller.modalPresentationStyle = .fullScreen
                present(controller,animated: true,completion: nil)
        }
        else{
            let result = UIAlertController(title: "WARING", message: "Hey, \("You should fill all the spaces ")",preferredStyle:  UIAlertController.Style.alert)
            result.addAction(UIAlertAction(title:"OK",style: UIAlertAction.Style.default, handler: nil))
            self.present(result, animated: true,completion: nil)
        }
   
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selectedDestinationBtn.layer.cornerRadius = selectedDestinationBtn.frame.height / 2
        destinationbtnCollection.forEach { btn in
            btn.layer.cornerRadius = btn.frame.height / 2
            btn.isHidden=true
            btn.alpha = 0
        }
    }
    //HERE WE CREATED THE ANIMATION FOR THE
    @IBAction func selectDestinationPressed(_ sender: UIButton) {
        destinationbtnCollection.forEach { btn in
            UIView.animate(withDuration: 0.7){
                btn.isHidden = !btn.isHidden
                btn.alpha = btn.alpha == 0 ? 1 : 0
                //btn.layoutIfNeeded()
            }
        }
    }
    //HERE WE GOT THE VALUE BY THE BUTTON PUSHED WITH A FUNCTION GETTING IT BY THE PARAMETER FUNCTION
    @IBAction func destinationPressed(_ propertie: UIButton) {
        if let tittleSelected = propertie.titleLabel?.text{
            print(tittleSelected)
        }
    }
    
}
