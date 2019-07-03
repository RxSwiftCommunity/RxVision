//
//  VNImageRequestHandler+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/01/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNImageRequestHandler {
    
    public func perform<T>(_ requests: [RxVNRequest<T>], on value: T) throws {
        let _requests = RxVNRequest<T>.setAndMap(requests, on: value)
        try self.base.perform(_requests)
    }

}
