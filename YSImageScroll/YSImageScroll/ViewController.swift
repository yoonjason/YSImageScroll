//
//  ViewController.swift
//  YSImageScroll
//
//  Created by Yoon on 2017. 5. 3..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var verticalStackView: UIStackView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageArray = [#imageLiteral(resourceName: "001"), #imageLiteral(resourceName: "003"), #imageLiteral(resourceName: "002")]
        
        scrollViewImages()
    }
    
    func scrollViewImages() {
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleToFill
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            
            scrollView.contentSize.width = scrollView.frame.size.width * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

