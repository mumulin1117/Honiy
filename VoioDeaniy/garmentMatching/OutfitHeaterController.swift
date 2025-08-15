//
//  OutfitHeaterController.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class OutfitHeaterController: UIViewController {
  
    @IBOutlet weak var wardrobeGrill: UIImageView!
    
    @IBOutlet weak var styleToaster: UICollectionView!
    private let outfitRegality: UIActivityIndicatorView = {
        let large = UIActivityIndicatorView.init(style: .large)
         large.frame.size = CGSize.init(width: 54, height: 54)
         large.tintColor = .black
         
         large.hidesWhenStopped = true
         large.color = .black
         return large
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        styleEmbellishment()
        wardrobeGrill.isUserInteractionEnabled = true
        wardrobeGrill.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(wardrobeRoaster)))
        
       
        
        outfitTenacity()
        outfitRegality.frame.size = CGSize.init(width: 50, height: 50)
        outfitRegality.center = self.view.center
        self.view.addSubview(outfitRegality)
    }
    
    private var seleterVerrsi:Int = 1
    
    @IBAction func outfitBroiler(_ sender: UIButton) {
        styleQuiz()
        seleterVerrsi = sender.tag - 100
        sender.isSelected = true
        outfitTenacity()
    }
    
    
   @objc func styleQuiz()  {
       let outfitRotation = self.view.viewWithTag(101) as? UIButton
       outfitRotation?.isSelected = false
       let outfitRotationq = self.view.viewWithTag(102) as? UIButton
       outfitRotationq?.isSelected = false
       let outfitRotationw = self.view.viewWithTag(103) as? UIButton
       outfitRotationw?.isSelected = false
       
    }
    
   @objc func wardrobeRoaster()  {
       let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig: AtfitFryer.outfitGenerator.wardrobeSpout(Nozzle: ""))
       wardrobeHeroism.isComePOST = false
       self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    private func styleEmbellishment()  {
        let wardrobeRegalia = UICollectionViewFlowLayout()
        wardrobeRegalia.itemSize = CGSize(width: UIScreen.main.bounds.width - 48, height: 306)
        wardrobeRegalia.scrollDirection = .vertical
        wardrobeRegalia.minimumLineSpacing = 10
        wardrobeRegalia.minimumInteritemSpacing = 10
        wardrobeRegalia.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        styleToaster.collectionViewLayout = wardrobeRegalia
        styleToaster.delegate = self
        styleToaster.dataSource = self
        styleToaster.backgroundColor = .clear
        styleToaster.showsHorizontalScrollIndicator = false
        styleToaster.register(UINib(nibName: "OutfitHeaterCell", bundle: nil), forCellWithReuseIdentifier: "OutfitHeaterCell")
    }
    private var pouplayertStyling = Array <Dictionary<String,Any>>()
    private func outfitTenacity()  {
        outfitRegality.startAnimating()
        
      
        
        
        
        ViewController.wardrobeRevelry(styleMerrymaking: "/nihyqifz/kgbmxjrai", outfitMirth: ["styleCommunity":"45448564","wardrobeManagement":15,"stylePreferences":1,"imageRecognition":1,"outfitSharing":seleterVerrsi]) { outfitTrailblazer in
            self.outfitRegality.stopAnimating()
            if let tigator = outfitTrailblazer as? [String: Any],
               
                let pecialist = tigator[AppDelegate.unravelEncrypted(Landmarks: "draktra")] as? Array<[String: Any] >  {
               
                let newNVIew = pecialist.filter { kso in
                    kso["styleAssessment"] as? String == nil
                }
                
                self.pouplayertStyling = newNVIew
                self.styleToaster.reloadData()
            }else{
                self.outfitRegality.stopAnimating()
            }
        } wardrobeHilarity: { outfitScientist in
            
        }
    }

}


extension OutfitHeaterController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pouplayertStyling.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let outfitFinery = collectionView.dequeueReusableCell(withReuseIdentifier: "OutfitHeaterCell", for: indexPath) as! OutfitHeaterCell
        outfitFinery.wardrobeAccoutrement(outfit: pouplayertStyling[indexPath.row])
        outfitFinery.outfitFurnace.addTarget(self, action: #selector(outfitChallenge), for: .touchUpInside)
        return outfitFinery
        
    }
    
    
   @objc func outfitChallenge() {
       let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig: AtfitFryer.styleVentilator.wardrobeSpout(Nozzle: ""))
       wardrobeHeroism.isComePOST = false
       self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dymID = pouplayertStyling[indexPath.row]["outfitChallenge"] as? Int ?? 0
        
        let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig: AtfitFryer.outfitEngine.wardrobeSpout(Nozzle: "\(dymID)"))
        wardrobeHeroism.isComePOST = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    
}
