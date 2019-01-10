//
//  ViewController.swift
//  Motivational Quotes App
//
//  Created by Simon Mc Neil on 2019-01-10.
//  Copyright © 2019 Simon Mc Neil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteTextLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var authorImageView: UIImageView!
    
    var quoteBook = QuoteBook()
    
    @IBAction func getNewQuote() {
        let newQuote = quoteBook.getRandomQuote()
        let author = quoteBook.getAuthor(for: newQuote)
        let authorImageName = quoteBook.getImageName(for: author)
        
        quoteTextLabel.text = newQuote
        authorNameLabel.text = author
        authorImageView.image = UIImage(named: authorImageName)
    }
}

