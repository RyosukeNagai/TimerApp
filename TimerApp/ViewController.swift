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
    
    var timer = Timer()
    
    var count = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 0
        
        //stopButtonを押せなくする//プロパティー
        stopButton.isEnabled = false
         
        for i in 0..<5{
            
            print(i)
            
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
            
        }
        
        imageView.image = UIImage(named: "0")
        
    }
    
    func startTimer(){
        
        //タイマーを回す　0.2秒毎にあるメソッドを呼ぶ
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    //0.2秒毎に呼ばれる
    @objc func timerUpdate(){
        
        count = count + 1
        
        if count > 4 {
            
            count = 0
        }
        
        imageView.image = imageArray[count]
        
        
        //imageArray[]
        
    }
    
    @IBAction func start(_ sender: Any) {
        //imageViewのimageに画像を反映していく
        
        startTimer()
        
        //startButtonは押せなくする
        startButton.isEnabled = false
        stopButton.isEnabled = true
        
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        
        //imageViewのimageに反映されている画像の流れをStopする
        
        //startButtonを押せるようにする
        startButton.isEnabled = true
        stopButton.isEnabled = false
        //タイマーを止める
        timer.invalidate()
        
        
    }
    
    
}

