//
//  DetailBuyViewController.swift
//  ProyectSecondParcial
//
//  Created by Sebastián  Torres on 05/05/22.

import UIKit

class DetailBuyViewController: UIViewController {
    
  //  @IBOutlet weak var imageContent: UIImageView!
    @IBOutlet weak var lebelDetail: UILabel!
    
    //CREAMOS UNA PROPIEDAD AL SECOND_VC
    var tripDesc: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //imageContent.image = UIImage(named: placeInImage!)
        
        if (tripDesc != nil){
            lebelDetail.text = tripDesc
        }
        
    }
}
