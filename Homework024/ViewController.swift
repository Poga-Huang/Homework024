//
//  ViewController.swift
//  Homework024
//
//  Created by 黃柏嘉 on 2021/11/10.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate{
    
    //PageControl
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBAction func changePage(_ sender: UIPageControl) {
        let point = CGPoint(x: (myScrollView.bounds.width*CGFloat(myPageControl.currentPage)), y: 0)
        myScrollView.setContentOffset(point, animated: true)
    }
    //ScrollView
    @IBOutlet weak var myScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //設定ScrollView的尺寸
        myScrollView.contentSize = CGSize(width: 1242, height: 414)
        
        //設定PageControll的總頁數
        myPageControl.numberOfPages = Int(myScrollView.contentSize.width/414)
    }
    
    //Delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        myPageControl.currentPage = Int(page)
    }

}

