//
//  VNSequenceRequestHandler+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 08/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNSequenceRequestHandler {
    
    public func perform<T>(_ requests: [RxVNRequest<T>], with value: T) throws {
        let _requests = requests.map { request -> VNRequest in
            request.set(value: value)
            return request.request
        }
        try self.base.perform(_requests)
    }
    
}
