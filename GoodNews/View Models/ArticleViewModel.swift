//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by MacBook Air on 6/4/19.
//  Copyright © 2019 Riitech. All rights reserved.
//  MARK:VIEW MODEL STRUCT

import Foundation

struct ArticleListViewModel { // parent view model for "tableview"
    let articles: [Article]
}

extension ArticleListViewModel {
    
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
    
}


struct ArticleViewModel { // view model for "tableviewcell"
    private let article: Article
}

extension ArticleViewModel {
    
    init(_ article: Article){
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: String{
        return self.article.title
    }
    
    var description: String{
        return self.article.description
    }
}
