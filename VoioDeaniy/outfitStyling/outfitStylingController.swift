//
//  outfitStylingController.swift
//  VoioDeaniy
//
//  Created by  on 2025/8/11.
//

import UIKit

class outfitStylingController: UIViewController {
    var Elowen = Array<Dictionary<String,Any>>() //
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

        wardrobeGrill.isUserInteractionEnabled = true
        wardrobeGrill.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(wardrobeRoaster)))
        
        styleEmbellishment()
        outfitRegality.center = self.view.center
        self.view.addSubview(outfitRegality)
    }
    
    @IBOutlet weak var outfitChallenge: UILabel!
    
    @IBOutlet weak var fashionTips: UIImageView!
    
   @objc func wardrobeRoaster()  {
       let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig: AtfitFryer.outfitGenerator.wardrobeSpout(Nozzle: ""))
       wardrobeHeroism.isComePOST = false
       self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
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
     
        let uuuis =   Elowen[indexPath.row]["outfitSelector"] as? Int ?? 0
       
        let wardrobeHeroism =  WardrobeVatontroller.init(gradientWig: AtfitFryer.styleDynamo.wardrobeSpout(Nozzle: "\(uuuis)"))
        wardrobeHeroism.isComePOST = false
        self.navigationController?.pushViewController(wardrobeHeroism, animated: true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        outfitTenacity()
    }
    private func outfitTenacity()  {
        outfitRegality.startAnimating()
        
        
        ViewController.wardrobeRevelry(styleMerrymaking: "/dcdzfrrfsz/bsrszzkw", outfitMirth: ["styleMapping":"45448564"]) { outfitTrailblazer in
            self.outfitRegality.stopAnimating()
            if let tigator = outfitTrailblazer as? [String: Any],
               
                let pecialist = tigator["data"] as? Array<[String: Any] >  {
                
                
                self.Elowen = pecialist.map { dix in
                    if let xu = (dix["styleEvaluation"] as? Array<[String:Any]>)?.first{
                        xu
                    }else{
                        [:]
                        
                    }
                    
                }
              
                
                self.styleToaster.reloadData()
                
                if self.Elowen.count == 0 {
                    self.outfitChallenge.isHidden = false
                    self.fashionTips.isHidden = false
                }else{
                    self.outfitChallenge.isHidden = true
                    self.fashionTips.isHidden = true
                }
            }else{
                self.outfitRegality.stopAnimating()
            }
        } wardrobeHilarity: { outfitScientist in
            
        }
    }
}
