//
//  ViewController.swift
//  DateQuickSelectView
//
//  Created by JackySong on 2020/9/23.
//  Copyright © 2020 JackySong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dateQuickSelectView: DateQuickSelectView = DateQuickSelectView(frame: CGRect(x: 30, y: 230, width: view.frame.size.width - 60, height: 150))
        dateQuickSelectView.backgroundColor = .green
        view.addSubview(dateQuickSelectView)
        
    }


}

