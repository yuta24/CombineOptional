//
//  OptionalType.swift
//  
//
//  Created by Yu Tawata on 2019/12/10.
//

import Foundation

public protocol OptionalType {
  associatedtype Wrapped

  var value: Wrapped? { get }
}
