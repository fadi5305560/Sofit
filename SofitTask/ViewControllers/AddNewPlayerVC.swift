//
//  AddNewPlayerVC.swift
//  AutobotTasks
//
//  Created by Apple on 31/03/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import iOSDropDown

class AddNewPlayerVC: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var Img_player: customImage!
    @IBOutlet weak var txtPlayerType: DropDown!
    @IBOutlet weak var txtPlayerName: UITextField!
    @IBOutlet weak var txtStrength: DropDown!
    @IBOutlet weak var txtIntelligence: DropDown!
    @IBOutlet weak var txtSpeed: DropDown!
    @IBOutlet weak var txtEndurance: DropDown!
    @IBOutlet weak var txtRank: DropDown!
    @IBOutlet weak var txtCourage: DropDown!
    @IBOutlet weak var txtFirePower: DropDown!
    @IBOutlet weak var txtSkill: DropDown!
    
    var TransformerData = [[String:String]]()
    
    var PlayerType = ""
    var PlayerName = ""
    var PlayerStrength = ""
    var PlayerIntelligence = ""
    var PlayerSpeed = ""
    var Endurance = ""
    var PlayerRank = ""
    var PlayerCourage = ""
    var PlayerFirePower = ""
    var PlayerSkill = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        DropDownSetting()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)

    }
    
    @IBAction func BtnOpenCamera(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
              var imagePicker = UIImagePickerController()
              imagePicker.delegate = self
              imagePicker.sourceType = .photoLibrary;
              imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func BtnBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func BtnSave(_ sender: UIButton) {
        if var data = UserDefaults.standard.value(forKey: "transData") as? [[String:String]] {
            data.append(["PlayerType":PlayerType,
                         "PlayerName":txtPlayerName.text ?? "",
                         "PlayerStrength":PlayerStrength,
                         "PlayerIntelligence":PlayerIntelligence,
                         "PlayerSpeed":PlayerSpeed,
                         "Endurance":Endurance,
                         "PlayerRank":PlayerRank,
                         "PlayerCourage":PlayerCourage,
                         "PlayerFirePower":PlayerFirePower,
                         "PlayerSkill":PlayerSkill])
            
            UserDefaults.standard.set(data, forKey: "transData")
            
        }else{
            UserDefaults.standard.set([["PlayerType":PlayerType,
                                        "PlayerName":txtPlayerName.text ?? "",
                                        "PlayerStrength":PlayerStrength,
                                        "PlayerIntelligence":PlayerIntelligence,
                                        "PlayerSpeed":PlayerSpeed,
                                        "Endurance":Endurance,
                                        "PlayerRank":PlayerRank,
                                        "PlayerCourage":PlayerCourage,
                                        "PlayerFirePower":PlayerFirePower,
                                        "PlayerSkill":PlayerSkill]], forKey: "transData")
        }
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.dismiss(animated: true, completion: nil)
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            Img_player.image = image
        }
    }
    
}
extension AddNewPlayerVC {
    func DropDownSetting(){
        txtPlayerType.optionArray = ["Auto Bot","Decepticon"]
        
        txtPlayerType.didSelect { (txt, id, index) in
            self.txtPlayerType.text = txt
            self.PlayerType = txt
        }
        
        txtStrength.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtStrength.didSelect {(txt, id, index) in
            self.txtStrength.text = txt
            self.PlayerStrength = txt
        }
        
        txtIntelligence.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtIntelligence.didSelect{(txt, id , index) in
            self.txtIntelligence.text = txt
            self.PlayerIntelligence = txt
        }
        
        txtSpeed.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtSpeed.didSelect{(txt, id , index) in
            self.txtSpeed.text = txt
            self.PlayerSpeed = txt
        }
        
        txtEndurance.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtEndurance.didSelect{(txt, id , index) in
            self.txtEndurance.text = txt
            self.Endurance = txt
        }
        //
        txtRank.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtRank.didSelect{(txt, id , index) in
            self.txtRank.text = txt
            self.PlayerRank = txt
        }
        //
        txtCourage.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtCourage.didSelect{(txt, id , index) in
            self.txtCourage.text = txt
            self.PlayerCourage = txt
        }
        //
        txtFirePower.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtFirePower.didSelect{(txt, id , index) in
            self.txtFirePower.text = txt
            self.PlayerFirePower = txt
        }
        //
        txtSkill.optionArray = ["0","1","2","3","4","5","6","7","8","9","10"]
        
        txtSkill.didSelect{(txt, id , index) in
            self.txtSkill.text = txt
            self.PlayerSkill = txt
        }
    }
}
