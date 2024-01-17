//
//  Localize+Bundle.swift
//  Lokalise sample
//
//  Created by Max Tran on 16/01/2024.
//

import Foundation
import Localize_Swift

let LCLCurrentLanguageBundlePath = "LCLCurrentLanguageBundlePath"

public extension Localize {
    class func setLanguageBundlePath(_ path: URL) {
        UserDefaults.standard.set(path, forKey: LCLCurrentLanguageBundlePath)
        UserDefaults.standard.synchronize()
    }

    class func resetLanguageBundlePath() {
        UserDefaults.standard.removeObject(forKey: LCLCurrentLanguageBundlePath)
        UserDefaults.standard.synchronize()
    }

    class func currentBundle() -> Bundle? {
        if let bundlePath = UserDefaults.standard.url(forKey: LCLCurrentLanguageBundlePath) {
            return Bundle(url: bundlePath)
        }
        return nil
    }
}
