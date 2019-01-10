//
//  QuotesBook.swift
//  Motivational Quotes App
//
//  Created by Simon Mc Neil on 2019-01-10.
//  Copyright © 2019 Simon Mc Neil. All rights reserved.
//

import Foundation

class QuoteBook {
    
    var quotes: [String] = [
        "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
        "No matter how small you start, start something that matters.",
        "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."
    ]
    
    var authors: [String] = [
        "Steve Jobs",
        "Brendon Burchard",
        "Theodore Rosevelt"
    ]
    
    var images: [String] = [
        "thumb_steve",
        "thumb_brendon",
        "thumb_theodore"
    ]
    
    func getRandomQuote() -> String {
        let randomIndex = Int.random(in: 0...(quotes.count-1))
        return quotes[randomIndex]
    }
    
    func getAuthor(for quote: String) -> String {
        if let index = quotes.index(of: quote) {
            return authors[index]
        }
        return ""
    }
    
    func getImageName(for author: String) -> String {
        if let index = authors.index(of: author) {
            return images[index]
        }
        return ""
    }
}
