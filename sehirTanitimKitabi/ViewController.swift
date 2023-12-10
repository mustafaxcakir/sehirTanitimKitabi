//
//  ViewController.swift
//  sehirTanitimKitabi
//
//  Created by MustafaCan on 10.12.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //sehirler
   
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara Bölgesi", gorsel: UIImage(named: "istanbul")!)
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu Bölgesi", gorsel: UIImage(named: "ankara")!)
        let izmir = Sehir(isim: "İzmir", bolge: "Ege Bölgesi", gorsel: UIImage(named: "izmir")!)
        let diyarbakir = Sehir(isim: "Diyarbakir", bolge: "Güneydoğu Anadolu Bölgesi", gorsel: UIImage(named: "diyarbakir")!)
        let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz Bölgesi", gorsel: UIImage(named: "antalya")!)
        
        sehirDizisi = [istanbul, ankara, izmir, diyarbakir, antalya]
        
        //Back tuşunu türkçeleştirme.
        let backButton = UIBarButtonItem()
        backButton.title = "Geri"
        navigationItem.backBarButtonItem = backButton
        
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi =   sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }
     
    

}

