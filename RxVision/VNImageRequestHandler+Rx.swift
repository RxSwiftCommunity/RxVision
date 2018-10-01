//
//  VNImageRequestHandler+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/01/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNImageRequestHandler {
    
    public func perform<T>(_ requests: [RxVNRequest<T>], with value: T) throws {
        let _requests = requests.map { request -> VNRequest in
            request.set(value: value)
            return request.request
        }
        try self.base.perform(_requests)
    }

}
