//
//  SelectCharactersVC.swift
//  AutobotTasks
//
//  Created by Apple on 30/03/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class SelectCharactersVC: UIViewController {

    
//    @IBOutlet weak var LblCharacterName: UILabel!
    @IBOutlet weak var ImgCharacter: UIImageView!
    @IBOutlet weak var PlayersCollectionView: UICollectionView!
    
    var GetTransformerData = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        LblCharacterName.text = ""
        GetUserData()
    }
    func GetUserData(){
        if var data = UserDefaults.standard.value(forKey: "transData") as? [[String:String]] {
               GetTransformerData = data
            PlayersCollectionView.reloadData()
        }
    }
    @IBAction func BtnBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
extension SelectCharactersVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return GetTransformerData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PlayersCollectionViewCell
        cell.contentView.layer.cornerRadius = 20
        cell.LblPlayerName.text = GetTransformerData[indexPath.row]["PlayerName"]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PlayGameVC") as! PlayGameVC
        vc.GetTransformerData = GetTransformerData[indexPath.row]
        self.present(vc, animated: true, completion: nil)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 130, height: 190)
        
    }
}
