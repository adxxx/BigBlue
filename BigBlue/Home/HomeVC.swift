//
//  HomeVC.swift
//  BigBlue
//
//  Created by 肖博文 on 2022/1/17.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        
        // MARK：设置上方的bar，按钮，条的UI
        
        //1.整体bar--在sb上设
        
        
        //2.selectedBar--按钮下方的条
        settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
        settings.style.selectedBarHeight = 3
        
        //3.selectedBar--文本或图片按钮
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        settings.style.buttonBarItemLeftRightMargin = 0
        
        
        
        super.viewDidLoad()
        
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label

        }
        
        }

    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let nearByVC = storyboard!.instantiateViewController(identifier: kNearByVCID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        
        return [discoveryVC, followVC, nearByVC]

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
