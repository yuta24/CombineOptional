//
//  Publisher+Optional.swift
//  
//
//  Created by Yu Tawata on 2019/12/10.
//

import Combine

extension Publisher where Output: OptionalType {
  func filterNil() -> AnyPublisher<Output.Wrapped, Failure> {
    flatMap { output -> AnyPublisher<Output.Wrapped, Failure> in
      if let value = output.value {
        return Future<Output.Wrapped, Failure> {
          $0(.success(value))
        }
        .eraseToAnyPublisher()
      } else {
        return Empty<Output.Wrapped, Failure>().eraseToAnyPublisher()
      }
    }
    .eraseToAnyPublisher()
  }
}
