//
//  HNONWYCELRHoliaCell.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit
protocol HNONWYCELRHoliaCellDelegate {
    func HNONWYCELRuserFillFuull(HNONWYCELRuidFeifei:Int)
}
class HNONWYCELRHoliaCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
    }
    var HNONWYCELRdarm:HNONWYCELRHoliaCellDelegate?
    
    var HNONWYCELRElowen = Array<Dictionary<String,Any>>(){
        didSet{
            self.HNONWYCELRoutfitDecoration.reloadData()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        HNONWYCELRstyleEmbellishment()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private lazy var HNONWYCELRoutfitDecoration: UICollectionView = {
        let HNONWYCELRwardrobeRegalia = UICollectionViewFlowLayout()
        HNONWYCELRwardrobeRegalia.itemSize = CGSize(width: 60, height: 90)
        HNONWYCELRwardrobeRegalia.scrollDirection = .horizontal
        HNONWYCELRwardrobeRegalia.minimumLineSpacing = 15
        HNONWYCELRwardrobeRegalia.minimumInteritemSpacing = 15
        HNONWYCELRwardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        let HNONWYCELRoutfitDecoration = UICollectionView(frame: CGRect(x:12, y: 0, width: UIScreen.main.bounds.width - 12, height: 90), collectionViewLayout: HNONWYCELRwardrobeRegalia)
        HNONWYCELRoutfitDecoration.collectionViewLayout = HNONWYCELRwardrobeRegalia
        HNONWYCELRoutfitDecoration.delegate = self
        HNONWYCELRoutfitDecoration.dataSource = self
        HNONWYCELRoutfitDecoration.backgroundColor = .clear
        HNONWYCELRoutfitDecoration.showsHorizontalScrollIndicator = false
        HNONWYCELRoutfitDecoration.register(HNONWYCELRUseriannimflCell.self, forCellWithReuseIdentifier: "HNONWYCELRUseriannimflCell")
        return HNONWYCELRoutfitDecoration
    }()
    
    private func HNONWYCELRstyleEmbellishment()  {
        self.contentView.addSubview(HNONWYCELRoutfitDecoration)
       
    }
    
}


extension HNONWYCELRHoliaCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        HNONWYCELRElowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let HNONWYCELRoutfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "HNONWYCELRUseriannimflCell", for: indexPath) as! HNONWYCELRUseriannimflCell
        HNONWYCELRoutfitFinery.HNONWYCELRwardrobeAccoutrement(HNONWYCELRoutfit: HNONWYCELRElowen[indexPath.row])
        return HNONWYCELRoutfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if self.HNONWYCELRdarm != nil {
            self.HNONWYCELRdarm?.HNONWYCELRuserFillFuull(HNONWYCELRuidFeifei:HNONWYCELRElowen[indexPath.row]["outfitStyling"] as? Int ?? 0)
        }
    }
    
}

