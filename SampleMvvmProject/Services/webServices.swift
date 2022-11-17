//
//  webServices.swift
//  SampleMvvmProject
//
//  Created by AlaaElrhman Arafa on 12/5/20.
//

import Foundation

class WebServices{
    
    func getArticals(url:URL, compeltionHandler: @escaping (([Article]?) -> Void)){
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error{
                print("error in getArticals: \(error.localizedDescription)")
                compeltionHandler(nil)
            }else if let data = data{
                if let articlesList = try? JSONDecoder().decode(ArticlesList.self, from: data){
                    compeltionHandler(articlesList.articles)
                }
                print(data)
            }
        }.resume()
    }
}

