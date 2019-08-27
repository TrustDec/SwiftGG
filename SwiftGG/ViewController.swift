//
//  ViewController.swift
//  SortDemo
//
//  Created by Harry Twan on 2019/7/14.
//  Copyright © 2019 Harry Twan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var heights: [CGFloat] = [30, 80, 40, 50, 20, 100, 70, 60, 90]
    
    private var views: [UIView] = []
    
    private var logs: [(Int, Int)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for i in 0 ..< heights.count {
            for j in 0 ..< heights.count {
                if heights[i] < heights[j] {
                    (heights[i], heights[j]) = (heights[j], heights[i])
                    logs.insert((i, j), at: 0)
                }
            }
        }
        ant(index: 0)
    }
    
    private func ant(index: Int) {
        if index == logs.count { return }
        let (a, b) = logs[index]
        swap(v1: views[a], v2: views[b])
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.ant(index: index + 1)
        }
    }
    
    private func initialViews() {
        for (i, h) in heights.enumerated() {
            let _view = UIView()
            _view.frame = CGRect(x: 10 + i * 30, y: 300, width: 30, height: Int(h * 2))
            _view.backgroundColor = .gray
            views.append(_view)
            self.view.addSubview(_view)
        }
    }
    
    private func swap(v1: UIView, v2: UIView, completion: @escaping () -> Void = {}) {
        let f1 = v1.frame.minX
        let f2 = v2.frame.minX
        UIView.animate(withDuration: 0.3, animations: {
            v1.frame = CGRect.init(x: f2, y: 300, width: 30, height: v1.frame.height)
            v2.frame = CGRect.init(x: f1, y: 300, width: 30, height: v2.frame.height)
        })
    }
}

