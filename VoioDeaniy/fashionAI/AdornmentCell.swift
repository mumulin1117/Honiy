//
//  AdornmentCell.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
//

import UIKit
protocol AdornmentCelldelegate {
    func adornmentCell(_ data: Dictionary<String,String>)
    
}
class AdornmentCell: UITableViewCell {
    @IBOutlet weak var outfitDecoration: UICollectionView!
    
    var darm:AdornmentCelldelegate?
    
    var Elowen = Array<Dictionary<String,String>>() // Replace Any with the actual type you expect to use
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleEmbellishment()
    }

    private func styleEmbellishment()  {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: 240, height: 300)
        wardrobeRegalia.scrollDirection = .horizontal
        wardrobeRegalia.minimumLineSpacing = 12
        wardrobeRegalia.minimumInteritemSpacing = 12
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        outfitDecoration.collectionViewLayout = wardrobeRegalia
        outfitDecoration.delegate = self
        outfitDecoration.dataSource = self
        outfitDecoration.backgroundColor = .clear
        outfitDecoration.showsHorizontalScrollIndicator = false
        outfitDecoration.register(UINib(nibName: "StyleRaimentCell", bundle: nil), forCellWithReuseIdentifier: "StyleRaimentCell")
    }
    
}


extension AdornmentCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "StyleRaimentCell", for: indexPath) as! StyleRaimentCell
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        return outfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.darm != nil {
            self.darm?.adornmentCell(Elowen[indexPath.row])
        }
    }
    
}
