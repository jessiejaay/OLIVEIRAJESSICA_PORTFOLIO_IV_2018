//
//  MarketplaceViewController.swift
//  OLIVEIRAJESSICA_DAILYQUESTS
//
//  Created by Jessica on 7/12/18.
//  Copyright © 2018 Jessica. All rights reserved.
//

import UIKit

class MarketplaceViewController: UIViewController
{
    // Outlets
    @IBOutlet var marketButtons: [UIView]!
    
    // Variable to receive coins value through segue
    var userCoins: Int?
    var tempCoins: Int = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Rounding views' edges
        for view in marketButtons
        {
            view.clipsToBounds = true
            view.layer.cornerRadius = 5
        }
        
        // Assigning received coins value to a local variable
        tempCoins = userCoins!
        print(tempCoins)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func goBackOneLevel(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    // The following segue passes the coins to the color themes view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Prepare the variable thar will be sent forward
        let playerCoins = tempCoins
        
        // Passing the data
        guard let destination = segue.destination as? ColorThemesViewController else { return }
        destination.userCoins = playerCoins
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
