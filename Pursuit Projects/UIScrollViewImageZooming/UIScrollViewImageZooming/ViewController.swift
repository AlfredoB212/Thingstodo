//
//  ViewController.swift
//  UIScrollViewImageZooming
//
//  Created by Alfredo Barragan on 2/5/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.zoomScale = 1.0
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 12.0 
    }


}

extension ViewController: UIScrollViewDelegate {
    //mandatory delegate method to activate zooming on the image view
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
