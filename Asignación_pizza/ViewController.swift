//
//  ViewController.swift
//  Asignación_pizza
//
//  Created by Richard Bruno on 10/18/16.
//  Copyright © 2016 Richard Bruno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pizzas"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as! ViewMasa
        sigVista.tamanoPizza = resultado
}

}
