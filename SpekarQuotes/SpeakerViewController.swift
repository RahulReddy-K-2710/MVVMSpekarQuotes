//
//  ViewController.swift
//  SpekarQuotes
//
//  Created by Roja on 29/11/22.
//

import UIKit

class SpeakerViewController: UIViewController {
    
    
    
//MARK: Outlets.
    @IBOutlet weak var speakerTableView: UITableView!
    
//MARK: Properties.
    var speakerviewModels = [SpeakerViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        speakerTableView.dataSource = self
        speakerTableView.delegate = self
        
        self.title = "Speakers"
        
        speakerviewModels = SpeakerDataManager.getSpeakerModel().map({ $0.viewModel})
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selectedIndex = speakerTableView.indexPathForSelectedRow?.row {
            let selectedSpeaker = speakerviewModels[selectedIndex]
            let viewController = segue.destination as? QuotesViewController
                
            }
        }
    
}
//MARK: Extention of UITableViewDataSource, UITableViewDelegate.

extension SpeakerViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        speakerviewModels.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        // Create Cell Object.
        let speakercell = tableView.dequeueReusableCell(withIdentifier: "SpeakarTableViewCell", for: indexPath) as? SpeakerTableViewCell
        // Create indexpathObject.
        let speaker = speakerviewModels[indexPath.row]
        //Configer cell Data.
        speakercell?.prepare(speaker: speaker)
        cell = speakercell
        // Return UITableViewCell.
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    

        
}
    

