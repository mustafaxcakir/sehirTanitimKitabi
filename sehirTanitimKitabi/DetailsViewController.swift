//
//  DetailsViewController.swift
//  sehirTanitimKitabi
//
//  Created by MustafaCan on 10.12.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        sehirIsmiLabel.text = secilenSehir?.isim
        sehirBolgesiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        
        //Back tuşunu türkçeleştirme.
        let backButton = UIBarButtonItem()
        backButton.title = "Geri"
        navigationItem.backBarButtonItem = backButton
    }
    

}
