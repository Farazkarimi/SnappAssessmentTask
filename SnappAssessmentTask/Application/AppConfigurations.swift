//
//  AppConfigurations.swift
//  SnappAssessmentTask
//
//  Created by Faraz Karimi on 2/7/1401 AP.
//

import Foundation

final class AppConfiguration {
    lazy var token: String = {
        guard let token = Bundle.main.object(forInfoDictionaryKey: "Token") as? String else {
            fatalError("Token must not be empty in plist")
        }
        return token
    }()
}
