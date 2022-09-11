 //
//  Extentions.swift
//  Netflix Geyu
//
//  Created by Justin Shen on 9/11/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
