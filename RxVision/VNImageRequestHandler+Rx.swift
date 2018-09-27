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
    
    public func perform<T>(_ requests: [RxVNRequest<T>], with value: T? = nil) throws {
        requests.forEach { (request) in
            request.value = value
        }
        try self.base.perform(requests.map { $0.request })
    }

    // deprecated
    public func perform(_ requests: [VNRequest]) -> Completable {
        return Completable.create { completable in
            do {
                try self.base.perform(requests)
                completable(.completed)
            } catch {
                completable(.error(error))
            }
            return Disposables.create()
        }
    }
    
}
