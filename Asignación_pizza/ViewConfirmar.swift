//
//  ViewConfirmar.swift
//  Asignación_pizza
//
//  Created by Richard Bruno on 10/19/16.
//  Copyright © 2016 Richard Bruno. All rights reserved.
//

import UIKit

class ViewConfirmar: UIViewController {
    @IBOutlet weak var tamano: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var confirmada: UILabel!
    @IBOutlet weak var ingredientesLabel: UILabel!
    @IBOutlet weak var cambiar: UIButton!
    @IBOutlet weak var confirmar: UIButton!
    
    
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var ingredientes: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pizza Elegida"
        confirmada.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tamano.text = String(tamanoPizza!)
        masa.text = String(tipoMasa!)
        queso.text = String(tipoQueso!)
        var ingredientesSalida: String = ""
        var i = 0
        while i < ingredientes.count - 1 {
            ingredientesSalida += ingredientes[i] + ", "
            i += 1
        }
        ingredientesSalida += ingredientes[i]
        ingredientesLabel.text = String(ingredientesSalida)
    }
    
 
    @IBAction func confirmarButton(_ sender: AnyObject) {
        
            confirmar.isHidden = true
            cambiar.isHidden = true
            confirmada.isHidden = false
        
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
