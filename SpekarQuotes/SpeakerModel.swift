//
//  SpekarModel.swift
//  SpekarQuotes
//
//  Created by Roja on 29/11/22.
//

import Foundation
/*
 Create Spaker Model here.
 */

struct SpeakerModel {
    let speakerName: String
    let speakerImage: String
    let speakerQuotes: [String]
}

//MARK: Extention of SpeakerViewModel.
extension SpeakerModel {
    var viewModel: SpeakerViewModel {
        SpeakerViewModel(speakerName: speakerName, speakerImage: speakerImage)
    }
}

//MARK: Extention of QuotesViewMOdel.
extension SpeakerModel {
    var quotesViewModel: QuotesViewModel {
        QuotesViewModel(speakerName: speakerName, speakerQuotes: speakerQuotes)
    }
}
    
/*
Create SpeakerDataManager Here.
 */
struct SpeakerDataManager {
    static func getSpeakerModel() -> [SpeakerModel] {
        let speaker1 = SpeakerModel(speakerName: "Warren-Buffett", speakerImage: "Warren-Buffet", speakerQuotes: ["Only When the tide goes out do you discover who's been swimming naked",
                                                                                                                  "Chains of habit are too light to be felt until they are too heavy to be broken"])
        
        let speaker2 = SpeakerModel(speakerName: "Bear Bryant",
                                    speakerImage: "Bear-Bryant-1980",
                                    speakerQuotes: ["Only When the tide goes out do you discover who's been swimming naked",
                                                    "Chains of habit are too light to be felt until they are too heavy to be broken"])
        
        let speaker3 = SpeakerModel(speakerName: "plato",
                                    speakerImage: "plato",
                                    speakerQuotes: ["Only When the tide goes out do you discover who's been swimming naked",
                                                    "Chains of habit are too light to be felt until they are too heavy to be broken"])
        
        // return the speakerModel
        let speakers = [speaker1, speaker2, speaker3]
        return speakers
    }
}
