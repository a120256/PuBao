//
//  ViewController.swift
//  appFirstTry
//
//  Created by 帥氣阿剛 on 2018/11/27.
//  Copyright © 2018 帥氣阿剛. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var justText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func  buttonPressed(_ sender:  Any)  {
        let speechUtterance  =    AVSpeechUtterance(string: justText.text!)
        
        speechUtterance.voice = AVSpeechSynthesisVoice(language:  "zh-TW")
        
        let synthesizer  =  AVSpeechSynthesizer()
        synthesizer.speak(speechUtterance)
    }

    @IBOutlet weak var apple: UIImageView!
    
    var  backgroundColor:  UIColor?
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBAction func alphaSlider(_ sender: Any) {
              apple.backgroundColor =  UIColor(red: 0, green: 0, blue: 0, alpha: CGFloat(alphaSlider.value))
 }
}
