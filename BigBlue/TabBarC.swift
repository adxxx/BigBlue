//
//  TabBarC.swift
//  BigBlue
//
//  Created by 肖博文 on 2022/1/25.
//

import UIKit
import YPImagePicker

class TabBarC: UITabBarController , UITabBarControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        
    }
    

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if  viewController is PostVC{
            
            //待做登陆
            
            var config = YPImagePickerConfiguration()
            
            // MARK: 通用配置
            config.isScrollToChangeModesEnabled = false
            config.onlySquareImagesFromCamera = false
            config.albumName = Bundle.main.appName
            config.startOnScreen = .library
            config.screens = [.library, .video, .photo]
            config.maxCameraZoomFactor = 6.0
            // MARK: 相册配置
            config.library.defaultMultipleSelection = true
            config.library.maxNumberOfItems = kMaxPhotoCount
            config.library.spacingBetweenItems = 2
            // MARK: - Gallery(多选完后展示和编辑页面)-画廊
            config.gallery.hidesRemoveButton = false
            // MARK: - 视频配置
            
            // MARK: - Gallery(多选完后的展示和编辑页面)-画廊
            config.gallery.hidesRemoveButton = false

            let picker = YPImagePicker(configuration: config)
            
            picker.didFinishPicking { [unowned picker] items, _ in
                if let photo = items.singlePhoto {
                    print(photo.fromCamera) // Image source (camera or library)
                    print(photo.image) // Final image selected by the user
                    print(photo.originalImage) // original image selected by the user, unfiltered
                }
                picker.dismiss(animated: true, completion: nil)
            }
            present(picker, animated: true, completion: nil)
            
            
            return false
        }
        
        return true
        
    }


}
