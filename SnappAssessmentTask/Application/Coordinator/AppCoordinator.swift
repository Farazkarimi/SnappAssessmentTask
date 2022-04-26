//
//  AppCoordinator.swift
//  SnappAssessmentTask
//
//  Created by Faraz Karimi on 2/7/1401 AP.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = TweetListViewController.instantiate(name: .tweetList)
        navigationController.pushViewController(vc, animated: false)
    }
}
