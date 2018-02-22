//
//  Const.swift
//  Web To RK Template
//
//  Created by Zaid Pathan on 25/07/17.
//  Copyright © 2017 Applied Informatics. All rights reserved.
//

import Foundation

public struct Const {
    public struct Defaults {
        public static let appFirstOpenedDate = "appFirstOpenedDate"
    }
    
    public struct Plist {
        public static let expiration_period = "expiration_period"
        public static let has_expiration = "has_expiration"
        public static let ABFontFamily = "ABFontFamily"
        public static let AppType = "AppType"
    }
    
    public enum AppType: Int {
        case ResearchKit = 0
        case CareKit = 1
        
        public func stringValue() -> String {
            switch self {
            case .ResearchKit:
                return "ResearchKit"
            case .CareKit:
                return "CareKit"
            }
        }
    }
    
    public struct FileName {
        public static let info = "Info"
        public static let careContent = "careContent.json"
    }
    
    public struct FileExtension {
        public static let plist = "plist"
    }
    
    public struct ContactDetails {
        public static let mail = "priya@trialx.com"
    }
    
    public struct API {
        public static let getCareKitJSON = "/get_carekit_json/"
    }
}
