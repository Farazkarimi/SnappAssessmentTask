//
//  AppDI.swift
//  SnappAssessmentTask
//
//  Created by Faraz Karimi on 2/7/1401 AP.
//

import Foundation

enum PHASE {
    case DEV, ALPHA, REAL
}

public class AppEnvironment {
    let phase: PHASE = .DEV
}

public class AppDI: AppDIInterface {
    
    static let shared = AppDI(appEnvironment: AppEnvironment())
    
    private let appEnvironment: AppEnvironment
    
    private init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
}
