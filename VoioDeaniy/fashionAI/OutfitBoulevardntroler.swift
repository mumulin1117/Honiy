//
//  OutfitBoulevard Controler.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
//

import UIKit

class OutfitBoulevardntroler: UIViewController {

    @IBOutlet weak var styleDevice: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        styleInstrument()
    }
    
    func styleInstrument() {
        styleDevice.delegate = self
        styleDevice.dataSource = self
        styleDevice.register(HoliaCell.self, forCellReuseIdentifier: "HoliaCell")
        styleDevice.register(UINib.init(nibName: "styleDevicewCell", bundle: nil), forCellReuseIdentifier: "styleDevicewCell")
        styleDevice.register(UINib.init(nibName: "AdornmentCell", bundle: nil), forCellReuseIdentifier: "AdornmentCell")
        
        
        
        styleDevice.backgroundColor = .clear
        styleDevice.showsVerticalScrollIndicator = false
    }

    @IBAction func wardrobeContraption(_ sender: UIButton) {
    }
    

}


extension OutfitBoulevardntroler:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let vhiod = tableView.dequeueReusableCell(withIdentifier: "HoliaCell", for: indexPath) as! HoliaCell
            return vhiod
        }else if indexPath.row == 1 {
            let vhiod = tableView.dequeueReusableCell(withIdentifier: "AdornmentCell", for: indexPath) as! AdornmentCell
            return vhiod
        }else{
            
            let vhiod = tableView.dequeueReusableCell(withIdentifier: "styleDevicewCell", for: indexPath) as! styleDevicewCell
            return vhiod
        }
      
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 90
        }else if indexPath.row == 1 {
            return 340
        }else{
            
            
            return 359
        }
    }
}
