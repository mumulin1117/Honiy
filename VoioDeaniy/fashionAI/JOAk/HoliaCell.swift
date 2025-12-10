//
//  HoliaCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit
protocol HoliaCellDelegate {
    func userFillFuull(uidFeifei:Int)
}
class HoliaCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
    }
    var darm:HoliaCellDelegate?
    
    var Elowen = Array<Dictionary<String,Any>>(){
        didSet{
            self.outfitDecoration.reloadData()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        styleEmbellishment()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private lazy var outfitDecoration: UICollectionView = {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: 60, height: 90)
        wardrobeRegalia.scrollDirection = .horizontal
        wardrobeRegalia.minimumLineSpacing = 15
        wardrobeRegalia.minimumInteritemSpacing = 15
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let outfitDecoration = UICollectionView(frame: CGRect(x:12, y: 0, width: UIScreen.main.bounds.width - 12, height: 90), collectionViewLayout: wardrobeRegalia)
        outfitDecoration.collectionViewLayout = wardrobeRegalia
        outfitDecoration.delegate = self
        outfitDecoration.dataSource = self
        outfitDecoration.backgroundColor = .clear
        outfitDecoration.showsHorizontalScrollIndicator = false
        outfitDecoration.register(UseriannimflCell.self, forCellWithReuseIdentifier: "UseriannimflCell")
        return outfitDecoration
    }()
    
    private func styleEmbellishment()  {
        self.contentView.addSubview(outfitDecoration)
       
    }
    
}


extension HoliaCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "UseriannimflCell", for: indexPath) as! UseriannimflCell
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        return outfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.darm != nil {
            self.darm?.userFillFuull(uidFeifei:Elowen[indexPath.row]["outfitStyling"] as? Int ?? 0)
        }
    }
    
}

