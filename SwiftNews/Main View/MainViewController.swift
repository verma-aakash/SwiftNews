//
//  MainViewController.swift
//  SwiftNews
//
//  Created by Aakash Verma on 2020-11-19.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var newsTableView: UITableView!
    
    var swiftNews: News?
    var selectedNews: Child?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Swift News"
        getAllNews()
    }
    
    func getAllNews() {
        if InternetConnection.isConnected(){
            self.view.showLoader()
            NetworkManager.shared.fetchAllNews(completion: { (response) in
                switch response{
                case .success(let news):
                    self.swiftNews = news
                    DispatchQueue.main.async {
                        self.newsTableView.reloadData()
                        self.view.removeLoader()
                    }
                case .failure(let error):
                    print(error)
                }
            })
        }
        else{
            showAlert(withTitle: "Internet Unavailable", withMessage: "Please check your Connection", buttonTitle: "Dismiss")
            print("Not Connected")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segue = segue.destination as? ArticleViewController{
            segue.selectedNews = self.selectedNews
        }
    }
    

}
extension MainViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.swiftNews?.data?.children?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nCell", for: indexPath) as! MainTableViewCell
        
        if let news = self.swiftNews?.data?.children?[indexPath.row] {
            cell.configureCell(childData: news.data! )
        }
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedNews = self.swiftNews?.data?.children?[indexPath.row]
        self.performSegue(withIdentifier:"articleSegue", sender: self)
    }
    
}
