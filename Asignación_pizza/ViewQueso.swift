//
//  ViewQueso.swift
//  Asignación_pizza
//
//  Created by Richard Bruno on 10/19/16.
//  Copyright © 2016 Richard Bruno. All rights reserved.
//

import UIKit

class ViewQueso: UIViewController {
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quesos"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as! ViewIngredientes
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = self.tipoMasa
        sigVista.tipoQueso = resultado
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
