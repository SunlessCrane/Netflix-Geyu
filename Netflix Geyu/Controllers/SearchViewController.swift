//
//  SearchViewController.swift
//  Netflix Geyu
//
//  Created by Justin Shen on 9/10/22.
//

import UIKit

class SearchViewController: UIViewController {
    
    private let searchBar: UISearchBar = {
        let searchBox = UISearchBar()
        return searchBox
    }()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        searchBar.frame = view.bounds
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        

        view.backgroundColor = .systemBackground
        
        view.addSubview(searchBar)
        APICaller.shared.storeHistory(searchInput: "Better Call Saul")
        APICaller.shared.storeHistory(searchInput: "White Collar")
    }

    
}
