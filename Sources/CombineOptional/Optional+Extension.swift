//
//  File.swift
//  
//
//  Created by Yu Tawata on 2019/12/10.
//

import Foundation

extension Optional: OptionalType {
    public var value: Wrapped? {
        return self
    }
}
