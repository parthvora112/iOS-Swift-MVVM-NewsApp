//
//  NewsListTVC.swift
//  SampleMvvmProject
//
//  Created by AlaaElrhman Arafa on 10/19/20.
//

import UIKit

class NewsListTVC: UITableViewController {
    private var articlesListVM : ArticlesListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup(){
        if let url = URL(string: "http://newsapi.org/v2/everything?q=bitcoin&from=2020-11-28&sortBy=publishedAt&apiKey=9f72bbe87d03436b92f0bff59534d5a0"){
            WebServices().getArticals(url: url) { (articles) in
                if let articles = articles{
                    self.articlesListVM = ArticlesListViewModel(articles: articles)
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
//        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return articlesListVM == nil ? 0 : articlesListVM.numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return articlesListVM.numberOfRowsInSection()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlesTVCell",for: indexPath) as? ArticleTVCell else{
            return UITableViewCell()
        }
        let articleVM = articlesListVM.articalAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM.title
        cell.descritionLabel.text = articleVM.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
