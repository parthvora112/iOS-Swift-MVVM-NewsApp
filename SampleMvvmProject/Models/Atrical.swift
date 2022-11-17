//
//  Atrical.swift
//  SampleMvvmProject
//
//  Created by AlaaElrhman Arafa on 27/12/2020.
//

import Foundation

struct ArticlesList:Decodable {
    let articles : [Article]
}

struct Article : Decodable{
    let title : String
    let description : String
}
