//
//  Article.swift
//  GoodNews
//
//  Created by MacBook Air on 6/3/19.
//  Copyright © 2019 Riitech. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
