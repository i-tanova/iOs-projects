//
//  ViewController.swift
//  Timely
//
//  Created by Ivana Tanova on 02/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLbl: UILabel!
    var count = -1
    var timer: Timer = Timer()
    var initialValue = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        counterLbl.text = "\(initialValue)"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onStart(_ sender: UIButton) {
        print("start")
        startTimer()
    }
    
    
    // must be internal or public.
    @objc func timerAction() {
        print("count")
        if(count == 0){
            counterLbl.text = "\(initialValue)"
            timer.invalidate()
            return
        }else{
            count -= 1
        }
        counterLbl.text = "\(count)"
    }
  
    
    
    func startTimer(){
        timer.invalidate()
        count = initialValue
    
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @IBAction func fiveMinTimerBtn(_ sender: Any) {
        timer.invalidate()
        initialValue = 5
        startTimer()
    }
    
    @IBAction func fifteenTimerBtn(_ sender: Any) {
        timer.invalidate()
        initialValue = 15
        startTimer()
    }
}

