//
//  DetailViewController.swift
//  myMultipleViewController
//
//  Created by Alfredo Barragan on 11/8/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var housePicture: UIImageView!
    
    
    @IBOutlet weak var houseSaying: UILabel!
    
    @IBOutlet weak var houseName: UILabel!
    var houseIExcept: House!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        houseName.text = houseIExcept.name
        housePicture.image = houseIExcept.banner
        houseSaying.text = houseIExcept.motto
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
