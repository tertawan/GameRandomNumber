//
//  ViewController.swift
//  GameRandomNumber
//
//  Created by Ninxi on 11/4/2562 BE.
//  Copyright © 2562 Ninxxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Backgorund : UIImageView!
    @IBOutlet weak var Correct : UIImageView!
    @IBOutlet weak var Incorrect : UIImageView!
    @IBOutlet weak var StartButton : UIButton!
    @IBOutlet weak var StatusLbl: UILabel!
    @IBOutlet weak var Numtext: UITextField!
    
    @IBOutlet weak var Numbtn1: UIButton!
    @IBOutlet weak var Numbtn2: UIButton!
    @IBOutlet weak var Numbtn3: UIButton!
    @IBOutlet weak var Numbtn4: UIButton!
    @IBOutlet weak var Numbtn5: UIButton!
    @IBOutlet weak var Numbtn6: UIButton!
    @IBOutlet weak var Numbtn7: UIButton!
    @IBOutlet weak var Numbtn8: UIButton!
    @IBOutlet weak var Numbtn9: UIButton!
    
    
    var Maxnumber = 0
    var RandomArr = [Int]()
    var StrStatus:String = ""
    var CurrentPosition = 0
    let pressColor = UIColor.red
    let unpressColor = UIColor.black
    
    @IBAction func PressN1btn(_ sender: UIButton){
        if(RandomArr[CurrentPosition] == 1){
            Incorrect.isHidden = true
            Numbtn1.backgroundColor = pressColor
            Numbtn1.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    
    @IBAction func PressN2btn(_ sender: UIButton){
        if(RandomArr[CurrentPosition] == 2){
            Incorrect.isHidden = true
            Numbtn2.backgroundColor = pressColor
            Numbtn2.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    
    @IBAction func PressN3btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 3){
            Incorrect.isHidden = true
            Numbtn3.backgroundColor = pressColor
            Numbtn3.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN4btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 4){
            Incorrect.isHidden = true
            Numbtn4.backgroundColor = pressColor
            Numbtn4.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN5btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 5){
            Incorrect.isHidden = true
            Numbtn5.backgroundColor = pressColor
            Numbtn5.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN6btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 6){
            Incorrect.isHidden = true
            Numbtn6.backgroundColor = pressColor
            Numbtn6.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN7btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 7){
            Incorrect.isHidden = true
            Numbtn7.backgroundColor = pressColor
            Numbtn7.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN8btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 8){
            Incorrect.isHidden = true
            Numbtn8.backgroundColor = pressColor
            Numbtn8.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    @IBAction func PressN9btn(_ sender: UIButton) {
        if(RandomArr[CurrentPosition] == 9){
            Incorrect.isHidden = true
            Numbtn9.backgroundColor = pressColor
            Numbtn9.isEnabled = false
            if(CurrentPosition == (Maxnumber - 1)){
                showSuccess()
            }else{
                CurrentPosition+=1
            }
        }else{
            ResetBtn()
        }
    }
    
    func ResetBtn(){
        StartButton.isHidden = true
        pressBtn(unpressColor)
        enableBtn(true)
        
        
        StrStatus = ""
        StatusLbl.text = StrStatus
        CurrentPosition = 0
        
        Incorrect.isHidden = false
        
        
    }
    
    func showSuccess(){
        HiddenObj(true)
        Correct.isHidden = false
        StartButton.isHidden = false
        Numtext.isHidden = false
        
    }
    
    func HiddenObj(_ Status: Bool){
        Correct .isHidden = Status
        Incorrect .isHidden = Status
        StartButton .isHidden = Status
        Numtext .isHidden = Status
        
        StatusLbl .isHidden = Status
        Numbtn1 .isHidden = Status
        Numbtn2 .isHidden = Status
        Numbtn3 .isHidden = Status
        Numbtn4 .isHidden = Status
        Numbtn5 .isHidden = Status
        Numbtn6 .isHidden = Status
        Numbtn7 .isHidden = Status
        Numbtn8 .isHidden = Status
        Numbtn9 .isHidden = Status
    }
    
    @IBAction func PressStart(_ sender: UIButton) {
        var CheckError = 0
        if let Intemp = Int(Numtext.text!){
            Maxnumber = Intemp
        }
        else{
            CheckError = -1
        }
        if (CheckError == 0){
            if (Numtext.text != nil && Numtext.text != ""){
                //Maxnumber = Int(Numtext.text!)!
                if (Maxnumber >= 1 && Maxnumber <= 9){
                    
                    StrStatus = ""
                    RandomArr = [Int]()
                    StatusLbl.text = StrStatus
                    CurrentPosition = 0
                    
                    ReadyToPlay(true)
                    pressBtn(unpressColor)
                    enableBtn(true)
                    
                    var CountArr = 0
                    var RandomNum = 0
                    var DuplicateNum = true
                    
                    while (CountArr < Maxnumber){
                        DuplicateNum = true
                        while (DuplicateNum){
                            RandomNum = (Int)(arc4random_uniform(9))
                            DuplicateNum = checkRandom(CountArr,RandomNum+1)
                        }
                        RandomArr.append(RandomNum+1)
                        CountArr+=1
                    }
                    //StatusLbl.isHidden = false
                    //StatusLbl.text = ShowRandomValue()
                    //StartButton.isHidden = false
                    //Numtext.isHidden = false
                    
                }
            }
        }
    }
    
    func ShowRandomValue() -> String{
        var strResult = ""
        var CountArr = 0
        
        while (CountArr < Maxnumber) {
            strResult += (String)(RandomArr[CountArr]) + " "
            CountArr+=1
        }
        return strResult
    }
    
    func checkRandom(_ CountArr:Int,_ RandomNum:Int) -> Bool{
        var Duplicate = false
        var CountLoop = 0
        
        while (CountLoop < CountArr) {
            
            if(RandomNum == RandomArr[CountLoop]){
                Duplicate = true
                break
            }
            CountLoop+=1
        }
        return Duplicate
    }
    
    func enableBtn(_ Status: Bool){
        
        Numbtn1.isEnabled = Status
        Numbtn2.isEnabled = Status
        Numbtn3.isEnabled = Status
        Numbtn4.isEnabled = Status
        Numbtn5.isEnabled = Status
        Numbtn6.isEnabled = Status
        Numbtn7.isEnabled = Status
        Numbtn8.isEnabled = Status
        Numbtn9.isEnabled = Status
        
        
    }
    
    func pressBtn(_ Color: UIColor){
        
        Numbtn1.backgroundColor = Color
        Numbtn2.backgroundColor = Color
        Numbtn3.backgroundColor = Color
        Numbtn4.backgroundColor = Color
        Numbtn5.backgroundColor = Color
        Numbtn6.backgroundColor = Color
        Numbtn7.backgroundColor = Color
        Numbtn8.backgroundColor = Color
        Numbtn9.backgroundColor = Color
        
    }
    
    func ReadyToPlay(_ Status: Bool)
    {
        Correct .isHidden = Status
        Incorrect .isHidden = Status
        StartButton .isHidden = Status
        Numtext .isHidden = Status
        
        StatusLbl .isHidden = !Status
        Numbtn1 .isHidden = !Status
        Numbtn2 .isHidden = !Status
        Numbtn3 .isHidden = !Status
        Numbtn4 .isHidden = !Status
        Numbtn5 .isHidden = !Status
        Numbtn6 .isHidden = !Status
        Numbtn7 .isHidden = !Status
        Numbtn8 .isHidden = !Status
        Numbtn9 .isHidden = !Status
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

