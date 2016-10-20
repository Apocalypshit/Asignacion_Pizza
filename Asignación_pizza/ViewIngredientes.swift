//
//  ViewIngredientes.swift
//  Asignación_pizza
//
//  Created by Richard Bruno on 10/19/16.
//  Copyright © 2016 Richard Bruno. All rights reserved.
//

import UIKit

class ViewIngredientes: UIViewController {
    @IBOutlet weak var jamon: UIButton!
    @IBOutlet weak var pepperoni: UIButton!
    @IBOutlet weak var pavo: UIButton!
    @IBOutlet weak var salchicha: UIButton!
    @IBOutlet weak var aceitunas: UIButton!
    @IBOutlet weak var cebolla: UIButton!
    @IBOutlet weak var pimientos: UIButton!
    @IBOutlet weak var anchoas: UIButton!
    @IBOutlet weak var pina: UIButton!
    @IBOutlet weak var mariscos: UIButton!
    
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var resultado: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ingredientes"
        
        jamon.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                        for: UIControlEvents.touchUpInside)
        pepperoni.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                            for: UIControlEvents.touchUpInside)
        pavo.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                       for: UIControlEvents.touchUpInside)
        salchicha.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                            for: UIControlEvents.touchUpInside)
        aceitunas.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                           for: UIControlEvents.touchUpInside)
        cebolla.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                          for: UIControlEvents.touchUpInside)
        pimientos.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                           for: UIControlEvents.touchUpInside)
        pina.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                       for: UIControlEvents.touchUpInside)
        anchoas.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                         for: UIControlEvents.touchUpInside)
        mariscos.addTarget(self, action: #selector(ViewIngredientes.buttonClicked(_:)),
                        for: UIControlEvents.touchUpInside)
    }

    
        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    resultado.removeAll()
    if (jamon.isSelected) {
        resultado.append((jamon.titleLabel?.text)!)
    }
    if (pepperoni.isSelected) {
        resultado.append((pepperoni.titleLabel?.text)!)
    }
    if (pavo.isSelected) {
        resultado.append((pavo.titleLabel?.text)!)
    }
    if (salchicha.isSelected) {
        resultado.append((salchicha.titleLabel?.text)!)
    }
    if (aceitunas.isSelected) {
        resultado.append((aceitunas.titleLabel?.text)!)
    }
    if (cebolla.isSelected) {
        resultado.append((cebolla.titleLabel?.text)!)
    }
    if (pimientos.isSelected) {
        resultado.append((pimientos.titleLabel?.text)!)
    }
    if (pina.isSelected) {
        resultado.append((pina.titleLabel?.text)!)
    }
    if (anchoas.isSelected) {
        resultado.append((anchoas.titleLabel?.text)!)
    }
    if (mariscos.isSelected) {
        resultado.append((mariscos.titleLabel?.text)!)
    }
    print(resultado)
    if (resultado.count >= 1 && resultado.count <= 5) {
        return true
    }
    else {
        return false
    }
}
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let sigVista = segue.destination as! ViewConfirmar
    sigVista.tamanoPizza = self.tamanoPizza
    sigVista.tipoMasa = self.tipoMasa
    sigVista.tipoQueso = self.tipoQueso
    sigVista.ingredientes = resultado
}

func buttonClicked(_ sender: UIButton) {
    sender.isSelected = !sender.isSelected
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
