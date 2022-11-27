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
        articleListAPIClient.fetch(completion: { result in
            switch result {
            case .success(let articleList):
                self.articles = articleList

            case .failure(let error):
                print(error.title)
            }


        })
    }
}
