//
//  ArticleListAPIClientProtocol.swift
//  MiniApp112-mockstub02-QiitaAPI
//
//  Created by 前田航汰 on 2022/11/27.
//

import Foundation

protocol ArticleListAPIClientProtocol {
  func fetch(completion: @escaping (([Article]?) -> Void))
}
