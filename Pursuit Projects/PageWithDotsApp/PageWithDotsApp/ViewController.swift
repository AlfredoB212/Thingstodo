//
//  ViewController.swift
//  PageWithDotsApp
//
//  Created by Alfredo Barragan on 12/17/18.
//  Copyright © 2018 Alfredo Barragan. All rights reserved.
//
import UIKit
    
    class PageViewController: UIPageViewController {
        
        lazy var allViewContollers = [self.getViewController(name: “FirstViewController”), self.getViewController(name: “SecondViewController”)]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            dataSource = self
            setViewControllers([allViewContollers[0]], direction: .forward, animated: true, completion: nil)
            
            
        }
        
        private func getViewController(name: String) -> UIViewController {
            //        let storyBoard = UIStoryboard.init(name: “Main”, bundle: nil)
            //        let vc = storyBoard.instantiateViewController(withIdentifier: name)
            
            return UIStoryboard.init(name: “Main”, bundle: nil).instantiateViewController(withIdentifier: name)
            
        }
    }
    extension PageViewController: UIPageViewControllerDataSource {
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = allViewContollers.firstIndex(of: viewController) else {return nil}
            let previousIndex = index - 1
            if previousIndex < 0 {
                return allViewContollers[allViewContollers.count - 1]
            } else {
                return allViewContollers[previousIndex]
            }
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = allViewContollers.firstIndex(of: viewController) else {return nil}
            let nextIndex = index + 1
            if nextIndex == allViewContollers.count {
                return allViewContollers[0]
            } else {
                return allViewContollers[nextIndex]
            }
        }
        
    }


