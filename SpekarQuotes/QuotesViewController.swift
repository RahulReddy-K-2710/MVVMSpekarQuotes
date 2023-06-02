//
//  QuotesViewController.swift
//  SpekarQuotes
//
//  Created by Roja on 29/11/22.
//

import UIKit

class QuotesViewController: UIViewController {
    
//MARK: Outlets.
    @IBOutlet weak var quotesTableView: UITableView!
    
 //MARK: Properties.
    var quotesViewModel = [QuotesViewModel]()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quotesTableView.dataSource = self
        quotesTableView.delegate = self
        
    
        quotesViewModel = SpeakerDataManager.getSpeakerModel().map({ $0.quotesViewModel})

    }
    
}

extension QuotesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quotesViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create cell object.
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuotesCell", for: indexPath)
        // Create indexpathObject.
        let quote = quotesViewModel[indexPath.row]
        // Configer cell data.
        cell.textLabel?.text = "\(quote.speakerQuotes)"
        // Return UITableViewCell.
        return cell
    }
    
    
}
