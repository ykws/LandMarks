//
//  PageViewController.swift
//  LandMarks
//
//  Created by KAWASHIMA Yoshiyuki on 2019/12/28.
//  Copyright © 2019 ykws. All rights reserved.
//

import SwiftUI
import UIKit

struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PageViewController>) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context: UIViewControllerRepresentableContext<PageViewController>) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true)
    }
}
