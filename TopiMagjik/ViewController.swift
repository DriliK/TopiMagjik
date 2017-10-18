//
//  ViewController.swift
//  TopiMagjik
//
//  Created by ICK on 18/10/2017.
//  Copyright © 2017 ICK. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
   
    @IBOutlet var foto: UIImageView!
    var topi = ["topi1", "topi2", "topi3", "topi4", "topi5"]
    
    var playAudio:AVAudioPlayer!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
//        if motion == UIEventSubtype.motionShake{
//            Luaj()
//        }
//    }

    @IBAction func buLuaj(_ sender: Any) {
       Luaj()
    }
    func Luaj(){
        var randomNumber = Int(arc4random_uniform(UInt32(topi.count)))
        var top = topi[randomNumber]
        var file = Bundle.main.url(forResource: "pergjigja", withExtension: "wav")
        playAudio = try! AVAudioPlayer(contentsOf: file!)
        
        //foto.image = UIImage(named: top)
        playAudio.play()
        
    }
    
}


