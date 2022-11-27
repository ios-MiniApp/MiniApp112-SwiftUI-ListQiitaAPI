//
//  ArticleViewModel.swift
//  MiniApp112-mockstub02-QiitaAPI
//
//  Created by 前田航汰 on 2022/11/27.
//

import SwiftUI

final class ArticleViewModel: ObservableObject {
    @Published var articles: [Article] = [Article]()
    private let articleListAPIClient = ArticleListAPIClient()

    init() {
        loadArticles()
    }

    private func loadArticles() {
        articleListAPIClient.fetch(completion: { articleList in
            guard let articleList = articleList,
                  0 < articleList.count else { return
            }
            self.articles = articleList
        })
    }
}
