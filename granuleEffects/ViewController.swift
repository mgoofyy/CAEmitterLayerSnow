//
//  ViewController.swift
//  granuleEffects
//
//  Created by goofygao on 15/9/13.
//  Copyright (c) 2015年 goofygao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var mapletImage = UIImageView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
        mapletImage.image = UIImage(named: "bg.jpg")
        mapletImage.alpha = 1
        mapletImage.contentMode = UIViewContentMode.Bottom
        self.view.addSubview(mapletImage)
        
        var mapleLeaf = MapleLeaf(frame: CGRectMake(0, -100, 200, 0))
        let mapleClipView = UIView(frame: CGRectOffset(view.frame, 0, 0))
        mapleClipView.clipsToBounds = true
        mapleClipView.addSubview(mapleLeaf)
        view.addSubview(mapleLeaf)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

