//
//  FollowVC.swift
//  BigBlue
//
//  Created by 肖博文 on 2022/1/18.
//

import UIKit
import XLPagerTabStrip

class FollowVC: UIViewController, IndicatorInfoProvider {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return IndicatorInfo(title: "关注")

        }



}
