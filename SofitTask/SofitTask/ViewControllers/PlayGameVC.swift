//
//  PlayGameVC.swift
//  AutobotTasks
//
//  Created by Apple on 31/03/2021.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class PlayGameVC: UIViewController {

    @IBOutlet weak var ImgGif: UIImageView!

    let ComputerPlayerType = "AutoBot"
    let ComputerPlayerName = "OPTIMUSPRIME"
    let ComputerPlayerStrength = "100"
    let ComputerPlayerIntelligence = "100"
    let ComputerPlayerSpeed = "100"
    let ComputerEndurance = "100"
    let ComputerPlayerRank = "100"
    let ComputerPlayerCourage = "100"
    let ComputerPlayerFirePower = "100"
    let ComputerPlayerSkill = "100"
    
    var playerName = ""
    var FinalPlayerName = ""
    var GetTransformerData : [String:String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ImgGif.loadGif(name: "0f3e99c79ef6b328809281c1580cd413")
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.ImgGif.isHidden = true
            self.GetResult()
        }
    }
    func PresentAlert(playerName: String){
        let alert = UIAlertController(title: "Winner Winner Chicken Dinner", message: playerName, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(_) in
            self.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true)
    }
    
    func LostAlert(playerName: String){
           let alert = UIAlertController(title: "Better Luck Next Time", message: playerName, preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(_) in
               self.dismiss(animated: true, completion: nil)
           }))
           
           self.present(alert, animated: true)
       }
    func DestroyedAlert(){
           let alert = UIAlertController(title: "Both Player Destroyed", message: "", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(_) in
               self.dismiss(animated: true, completion: nil)
           }))
           
           self.present(alert, animated: true)
       }
    func GetResult() {
        playerName = GetTransformerData["PlayerName"]!.uppercased()
        FinalPlayerName = playerName.replacingOccurrences(of: " ", with: "")
        if FinalPlayerName == ComputerPlayerName {
            
            PresentAlert(playerName: FinalPlayerName)
            
        }
        if ComputerPlayerStrength < GetTransformerData["PlayerStrength"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerIntelligence < GetTransformerData["PlayerIntelligence"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerSpeed < GetTransformerData["PlayerStrength"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerEndurance < GetTransformerData["Endurance"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerRank < GetTransformerData["PlayerRank"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerCourage < GetTransformerData["PlayerCourage"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerFirePower < GetTransformerData["PlayerFirePower"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerSkill < GetTransformerData["PlayerSkill"]! {
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        if ComputerPlayerSpeed < GetTransformerData["PlayerSpeed"]!{
            print(GetTransformerData["PlayerName"]! + "Winner")
            PresentAlert(playerName: GetTransformerData["PlayerName"]!)
        }
        
        if ComputerPlayerStrength == GetTransformerData["PlayerStrength"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerIntelligence == GetTransformerData["PlayerIntelligence"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerSpeed == GetTransformerData["PlayerStrength"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerEndurance == GetTransformerData["Endurance"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerRank == GetTransformerData["PlayerRank"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerCourage == GetTransformerData["PlayerCourage"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerFirePower == GetTransformerData["PlayerFirePower"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerSkill == GetTransformerData["PlayerSkill"]! {
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        if ComputerPlayerSpeed == GetTransformerData["PlayerSpeed"]!{
            print("Both Player Destroyed Because of same Power")
            DestroyedAlert()
        }
        
        if ComputerPlayerStrength > GetTransformerData["PlayerStrength"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerIntelligence > GetTransformerData["PlayerIntelligence"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerSpeed > GetTransformerData["PlayerStrength"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerEndurance > GetTransformerData["Endurance"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerRank > GetTransformerData["PlayerRank"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerCourage > GetTransformerData["PlayerCourage"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerFirePower > GetTransformerData["PlayerFirePower"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerSkill > GetTransformerData["PlayerSkill"]! {
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
        if ComputerPlayerSpeed > GetTransformerData["PlayerSpeed"]!{
            print(GetTransformerData["PlayerName"]! + "Lost")
            PresentAlert(playerName: GetTransformerData["PlayerName"]! + "Lost")
        }
    }
}
