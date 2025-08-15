//
//  AdornmentCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit
protocol AdornmentCelldelegate {
    func adornmentCell(_ data: Dictionary<String,Any>)
    func giventerUserInafomation(_ dataID: Int?)
}
class AdornmentCell: UITableViewCell {
    @IBOutlet weak var outfitDecoration: UICollectionView!
    
    var darm:AdornmentCelldelegate?
    
    var Elowen = Array<Dictionary<String,Any>>() {
        didSet{
            self.outfitDecoration.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
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
        outfitFinery.outfitDecoration.tag = indexPath.row
        outfitFinery.outfitDecoration.addTarget(self, action: #selector(giventerUserInafomation(sua:)), for: .touchUpInside)
        outfitFinery.styleEmbellishment.tag = 1000 + indexPath.row
        outfitFinery.styleEmbellishment.addTarget(self, action: #selector(giventerUserInafomation(sua:)), for: .touchUpInside)
        return outfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.darm != nil {
            self.darm?.adornmentCell(Elowen[indexPath.row])
        }
    }
    
    @objc func giventerUserInafomation(sua:UIButton)  {
        
        if sua.tag > 900 {
            if self.darm != nil {
                self.darm?.giventerUserInafomation(nil)
            }
            
            return
        }
        let isukkk =  Elowen[sua.tag]["styleMoodboard"] as? String ?? "0"
        if self.darm != nil {
            self.darm?.giventerUserInafomation(Int(isukkk) )
        }
    }
    
}
