//
//  ViewController.swift
//  NagivationTwoPart
//
//  Created by junior on 5/11/20.
//  Copyright © 2020 junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navegacion por codigo hacia las otras vistas
    // en este ejemplo lo que vamos hacer es lo mismo de seguie solo que en este caso lo vamos hacer por codigo
    // como se observa en el main.storyboard los enlaces no fueron hechos mediante los botones si no mediante el view controller en general

    @IBAction func buttonRed(_ sender: Any) {
        
        // llamando mediante codigo hacia el viewController
        performSegue(withIdentifier: "viewControllerRed", sender: self)
    }
    
    
    
    @IBAction func buttonGreeen(_ sender: Any) {
        performSegue(withIdentifier: "viewControllerGreen", sender: self)
    }
    
    
    
    @IBAction func buttonYellow(_ sender: Any) {
        performSegue(withIdentifier: "viewControllerYellow", sender: self)
    }
    
    // preparar para un segue, override indica que ya se manda a llamar, osea sobreeescriiendo la funcion prepare
    // para entender mejor es como una funcion que ya se manda a llamar digamos en el boton red,
    // pero tu estas volviendo a llamar y sobreescribiendo su codigo
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // vamos a realiza una funcion para saber que segue vamos a llamar y para saber que datos contiene
        
        if segue.identifier == "viewControllerRed" {
            if let destination = segue.destination as? RedViewController {
                destination.titulo = "Red"
            }
        } else if segue.identifier == "viewControllerGreen" {
            if let destino = segue.destination as? RedViewController {
                destino.titulo = "Green"
            }
        }
        
    }
}

