//
//  ContentView.swift
//  MiniApp112-mockstub02-QiitaAPI
//
//  Created by 前田航汰 on 2022/11/27.
//

import SwiftUI

struct Article: Codable {
    let title: String
}

struct ContentView: View {
    @ObservedObject var viewModel = ArticleViewModel()

    var body: some View {
        VStack {

            List {
                ForEach(0..<viewModel.articles.count, id: \.self) { index in
                    Text(viewModel.articles[index].title)
                }
            }.onAppear{
                print(viewModel.articles)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
