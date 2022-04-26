//
//  Storyboarded.swift
//  SnappAssessmentTask
//
//  Created by Faraz Karimi on 2/7/1401 AP.
//

import UIKit

protocol Storyboarded {
    static func instantiate(name: StoryBoardName) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(name: StoryBoardName) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)

        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // load our storyboard
        let storyboard = UIStoryboard(name: name.rawValue, bundle: nil)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}


enum StoryBoardName: String {
    case tweetList = "TweetList"
}
