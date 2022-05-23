//
//  ViewController.swift
//  ScrollViewProject
//
//  Created by Carlos Torres on 5/15/22.
//

import UIKit

class tasteViewController: UIViewController {
    
    /*@IBOutlet var myStackView: UIStackView!
    @IBOutlet var myScrollView: UIScrollView!
    
    @IBOutlet var ImgContent: UIImageView!
    struct city{
        var name: String
        var imageName : String }*/
    
   
    
    @IBAction func goHome(_ sender: Any) {
        performSegue(withIdentifier: "quoteTrip", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //createStackView()
        
    }
    
    /*func createStackView() {
        
        let cities  = [city(name:"Juquila",imageName: "Nayarit"),
                       city(name:"leon",imageName: "cancun"),
                       city(name:"Oaxaca",imageName: "Nuevo-Leon")];
                
        var lstCities: [UIView] = [];
        
        for i in 0 ..< cities.count{
            ImgContent = UIImageView()
            ImgContent.image = UIImage(named: cities[i].imageName);
            ImgContent.contentMode = .scaleAspectFill
           lstCities.append(ImgContent)
            let label = UILabel();
            label.textAlignment = .center;
            label.text = cities[i].name;
            lstCities.append(label)
        }
        
        myStackView = UIStackView(arrangedSubviews: lstCities);
        
        myStackView.frame = view.bounds;
        myStackView.axis = .vertical;
        myStackView.distribution = .fillEqually;
        myStackView.spacing = 5;
        
        myScrollView.addSubview(myStackView)
    }*/

}
