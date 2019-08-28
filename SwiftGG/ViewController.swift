//
//  ViewController.swift
//  SortDemo
//
//  Created by Harry Twan on 2019/7/14.
//  Copyright © 2019 Harry Twan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onLetVarAction(){
        
        let maximumNumberOfLoginAttempts = 10
        var currentLoginAttempt:Int
        var welcomeMessage: String
        currentLoginAttempt = 19
        welcomeMessage = "Trust\(currentLoginAttempt)"
        var x, y, z:Int
        x=1
        y=2
        z=3
        print(maximumNumberOfLoginAttempts)
        print(currentLoginAttempt,terminator:"000")
        print(x,y,z,welcomeMessage)
        print("The current value of friendlyWelcome is \(welcomeMessage)")
        /* 这是第一个多行注释的开头
         /* 这是第二个被嵌套的多行注释 */
         这是第一个多行注释的结尾 */
        let cat = "🐱"; print(cat)// 输出“🐱”
        let minValue = UInt8.min  // minValue 为 0，是 UInt8 类型
        let maxValue = UInt8.max  // maxValue 为 255，是 UInt8 类型
        print(minValue,"----",maxValue)
        let decimalInteger = 17
        let binaryInteger = 0b10001       // 二进制的17
        let octalInteger = 0o21           // 八进制的17
        let hexadecimalInteger = 0x11     // 十六进制的17
        print(decimalInteger,"----",binaryInteger,"----",octalInteger,"----",hexadecimalInteger)
        /*let paddedDouble = 000123.456
         let oneMillion = 1_000_000
         let justOverOneMillion = 1_000_000.000_000_1*/
        let twoThousand: UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        print(twoThousandAndOne)
        typealias AudioSample = UInt16
        let maxAmplitudeFound = AudioSample.min
        print(maxAmplitudeFound)
        let orangesAreOrange:Bool = false
        let turnipsAreDelicious = true
        if orangesAreOrange {
            print("Mmm, tasty turnips!")
        } else {
            print("Eww, turnips are horrible.\(turnipsAreDelicious)")
        }
        let http404Error = (404, "Not Found")
        let http200Status = (statusCode: 200, description: "OK")
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.1)")
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        print(convertedNumber)
        var serverResponseCode: Int? = 404
        // serverResponseCode 包含一个可选的 Int 值 404
        serverResponseCode = nil
        // serverResponseCode 现在不包含值
        
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // 需要感叹号来获取值
        
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString  // 不需要感叹号
        
//        let age = -3
//        if age > 10 {
//            print("You can ride the roller-coaster or the ferris wheel.")
//        } else if age > 0 {
//            print("You can ride the ferris wheel.")
//        } else {
//            assertionFailure("A person's age can't be less than zero.")
//        }
        let index = 2;
        precondition(index > 0, "Index must be greater than zero.")
    }
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello Trust!", message: "This is My first app", preferredStyle: .alert);
        let defu = UIAlertAction(title: "one", style: .default, handler:nil);
        let action = UIAlertAction(title: "ok", style: .destructive, handler:nil);
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler:nil);
        alert.addAction(defu);
        alert.addAction(cancel);
        alert.addAction(action);
        present(alert,animated:true, completion:nil);
    }
    @IBAction func showActionSheet(){
        let select = UIAlertController(title: "选择", message: "上传材料", preferredStyle: .actionSheet);
        let album = UIAlertAction(title: "相册", style: .default, handler:nil);
        let photograph = UIAlertAction(title: "拍照", style: .destructive, handler:nil);
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler:nil);
        select.addAction(album);
        select.addAction(photograph);
        select.addAction(cancel);
        present(select,animated:true, completion:nil);
    }
    
}

