//
//  ViewController.swift
//  ProyectSecondParcial
//
//  Created by Sebastián  Torres on 29/03/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var picOne:UIImageView!
    @IBOutlet var picTwo:UIImageView!
    @IBOutlet var picThree:UIImageView!
    @IBOutlet weak var picFour: UIImageView!
    @IBOutlet weak var picFive: UIImageView!
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let centralLocation = CLLocationCoordinate2DMake(21.15392629140981, -101.7182319579943);
        let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let mapRegion = MKCoordinateRegion(center: centralLocation, span: mapSpan)
        self.map.setRegion(mapRegion, animated: true)
        
        picOne.backgroundColor = .clear
        picOne.layer.cornerRadius = 30
        picOne.layer.borderWidth = 1
        picOne.layer.borderColor = UIColor.white.cgColor
        
        picTwo.backgroundColor = .clear
        picTwo.layer.cornerRadius = 30
        picTwo.layer.borderWidth = 1
        picTwo.layer.borderColor = UIColor.white.cgColor

        picThree.backgroundColor = .clear
        picThree.layer.cornerRadius = 30
        picThree.layer.borderWidth = 1
        picThree.layer.borderColor = UIColor.white.cgColor

        picFour.backgroundColor = .clear
        picFour.layer.cornerRadius = 30
        picFour.layer.borderWidth = 1
        picFour.layer.borderColor = UIColor.white.cgColor

        picFive.backgroundColor = .clear
        picFive.layer.cornerRadius = 30
        picFive.layer.borderWidth = 1
        picFive.layer.borderColor = UIColor.white.cgColor

        
    }
   
}

