//
//  ArticleViewModel.swift
//  SampleMvvmProject
//
//  Created by AlaaElrhman Arafa on 27/12/2020.
//

import Foundation


struct ArticlesListViewModel {
    let articles : [Article]
}

extension ArticlesListViewModel{
    var numberOfSections : Int{
        return 1
    }
    
    func numberOfRowsInSection() -> Int{
        return self.articles.count
    }
    
    func articalAtIndex(_ index:Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}
//extension ArticlesListViewModel{
//    init(_ articles:[Article]) {
//        self.articles = articles
//    }
//}

struct ArticleViewModel {
    private let article:Article
}

extension ArticleViewModel{
    init(_ article:Article) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title:String{
        return self.article.title
    }
    
    var description:String{
        return self.article.description
    }
}
