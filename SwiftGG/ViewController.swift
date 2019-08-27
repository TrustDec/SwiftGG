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
    @IBAction func showAlert(){
        print("Trust!")
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
        print("Trust!")
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

