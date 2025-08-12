//
//  styleDevicewCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

protocol styleDevicewCelldelegate {
    func styleDevicetCell(_ data: Dictionary<String,Any>?)
    
}
class styleDevicewCell: UITableViewCell {
    var darm:styleDevicewCelldelegate?
    
    @IBOutlet weak var outfitDecoration: UICollectionView!
    var Elowen = Array<Dictionary<String,Any>>(){
        didSet{
            outfitDecoration.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleEmbellishment()
        self.backgroundColor = .clear
    }

    private func styleEmbellishment()  {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: 240, height: 306)
        wardrobeRegalia.scrollDirection = .horizontal
        wardrobeRegalia.minimumLineSpacing = 12
        wardrobeRegalia.minimumInteritemSpacing = 12
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        outfitDecoration.collectionViewLayout = wardrobeRegalia
        outfitDecoration.delegate = self
        outfitDecoration.dataSource = self
        outfitDecoration.backgroundColor = .clear
        outfitDecoration.showsHorizontalScrollIndicator = false
        outfitDecoration.register(UINib(nibName: "DeraaNweimflCell", bundle: nil), forCellWithReuseIdentifier: "DeraaNweimflCell")
    }
    
}


extension styleDevicewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "DeraaNweimflCell", for: indexPath) as! DeraaNweimflCell
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        outfitFinery.outfitDecoration.addTarget(self, action: #selector(sjOIShguReport), for: .touchUpInside)
        return outfitFinery
        
    }
    
    
   @objc func sjOIShguReport()  {
       if self.darm != nil {
           self.darm?.styleDevicetCell(nil)
       }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.darm != nil {
            self.darm?.styleDevicetCell(Elowen[indexPath.row])
        }
    }
    
}
