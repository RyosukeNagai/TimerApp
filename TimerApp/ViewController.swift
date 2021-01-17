//
//  ViewController.swift
//  TimerApp
//
//  Created by 長井崚介 on 2021/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //stopButtonを押せなくする
        stopButton.isEnabled = true
        
        //プロパティー
    }
    
    @IBAction func start(_ sender: Any) {
        //imageViewのimageに画像を反映していく
        
        //startButtonは押せなくする
        startButton.isEnabled = true
        
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        
        //imageViewのimageに反映されている画像の流れをStopする
        
        //startButtonを押せるようにする
        startButton.isEnabled = false
        
    }
    
    
}

