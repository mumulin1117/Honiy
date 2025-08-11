//
//  outfitStylingController.swift
//  VoioDeaniy
//
//  Created by mumu on 2025/8/11.
//

import UIKit

class outfitStylingController: UIViewController {
    var Elowen = Array<Dictionary<String,String>>() //
    @IBOutlet weak var wardrobeGrill: UIImageView!
    
    @IBOutlet weak var styleToaster: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wardrobeGrill.isUserInteractionEnabled = true
        wardrobeGrill.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(wardrobeRoaster)))
        
        styleEmbellishment()
    }
    

    
   @objc func wardrobeRoaster()  {
        
    }
    private func styleEmbellishment()  {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 90)
        wardrobeRegalia.scrollDirection = .vertical
        wardrobeRegalia.minimumLineSpacing = 10
        wardrobeRegalia.minimumInteritemSpacing = 10
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        styleToaster.collectionViewLayout = wardrobeRegalia
        styleToaster.delegate = self
        styleToaster.dataSource = self
        styleToaster.backgroundColor = .clear
        styleToaster.showsHorizontalScrollIndicator = false
        styleToaster.register(UINib(nibName: "outfitStylingCell", bundle: nil), forCellWithReuseIdentifier: "outfitStylingCell")
    }
    
}


extension outfitStylingController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Elowen.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "outfitStylingCell", for: indexPath) as! outfitStylingCell
        outfitFinery.wardrobeAccoutrement(outfit: Elowen[indexPath.row])
        return outfitFinery
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
