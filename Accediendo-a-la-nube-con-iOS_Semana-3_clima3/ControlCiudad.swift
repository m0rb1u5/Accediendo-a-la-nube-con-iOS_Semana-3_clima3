//
//  ControlCiudad.swift
//  Accediendo-a-la-nube-con-iOS_Semana-3_clima3
//
//  Created by Juan Carlos Carbajal Ipenza on 28/10/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit

class ControlCiudad: UIViewController {
    var codigo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urls = "https://query.yahooapis.com/v1/public/yql?format=json&q=SELECT%20*%20FROM%20weather.forecast%20WHERE%20u%20=%20%27c%27%20and%20woeid%20=%20%27"
        let url: NSURL? = NSURL(string: urls + self.codigo + "%27")
        let datos: NSData? = NSData(contentsOf: url! as URL)
        do {
            let json = try JSONSerialization.jsonObject(with: datos! as Data, options: JSONSerialization.ReadingOptions.mutableLeaves)
        }
        catch _ {
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
