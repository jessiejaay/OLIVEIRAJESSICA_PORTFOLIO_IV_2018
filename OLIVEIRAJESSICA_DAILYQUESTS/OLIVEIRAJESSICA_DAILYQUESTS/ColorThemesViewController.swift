//
//  ColorThemesViewController.swift
//  OLIVEIRAJESSICA_DAILYQUESTS
//
//  Created by Jessica on 7/12/18.
//  Copyright © 2018 Jessica. All rights reserved.
//

import Alamofire
import UIKit

class ColorThemesViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var userCoins_label: UILabel!
    @IBOutlet var purchaseButtons: [UIButton]!
    
    // Variable to receive the passed data
    var userCoins: Int?
    var colorThemes: [(red: Int, green: Int, blue: Int)] = [(104, 128, 144), (249, 234, 229), (85, 133, 131), (160, 199, 178), (48, 18, 34), (246, 210, 111), (55, 91, 121), (145, 221, 232), (211, 61, 75), (244, 237, 193), (142, 192, 182), (221, 235, 165)]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Rounding purchase buttons' edges
        for button in purchaseButtons
        {
            button.clipsToBounds = true
            button.layer.cornerRadius = 5
        }
        
        // Assigning received coins value to a local variable and updating label
        userCoins_label.text = "Your coins: \(userCoins!)"
        
        //let tempColorScheme =
        
        print()
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBackOneLevel(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    func retrieveCoins()
    {
        
    }
}
