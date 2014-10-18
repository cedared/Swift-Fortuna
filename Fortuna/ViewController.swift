//
//  ViewController.swift
//  Fortuna
//
//  Created by Albert Young on 14/10/17.
//  Copyright (c) 2014年 2bapm. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        self.displayRandomQuote()
    }
    @IBOutlet weak var quotationTextView: UITextView!
    var delegate: AppDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        println("Hacking in Swift, since IOS" + String(8) )
//        println("controller: \(self)")
//        println("view: \(self.view)")
//        println("view's frame: \(self.view.frame)")
//        let path = NSBundle.mainBundle().pathForResource("positiveQuotes", ofType: "json")
//        println("positive quotes path: \(path)")
//        println("viewDidload quotationTextView: \(quotationTextView)")
        
        delegate = UIApplication.sharedApplication().delegate as AppDelegate
        self.displayRandomQuote()
            
            

        }
    
    func displayRandomQuote(){
        
        
        let quotesRandom:Int = Int(arc4random_uniform(2))
        
        switch quotesRandom{
        case 0:
            var quotes = delegate.positiveQuotes
            let length:UInt32 = UInt32(quotes.count)
            var quoteRandom:Int = Int(arc4random_uniform(length))
            var quote = quotes[quoteRandom]
            quotationTextView.text = quote
            println(quoteRandom)
            println(0)
            
        default:
            var quotes = delegate.negativeQuotes
            let length:UInt32 = UInt32(quotes.count)
            var quoteRandom:Int = Int(arc4random_uniform(length))
            
            var quote = quotes[quoteRandom]
            quotationTextView.text = quote
            println(quote)
            println(quoteRandom)
            println(1)
        }

        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
}

