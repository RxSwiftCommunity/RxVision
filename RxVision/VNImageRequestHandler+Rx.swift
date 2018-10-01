//
//  VNImageRequestHandler+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/01/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import os.log
import Vision
import RxSwift

extension Reactive where Base: VNImageRequestHandler {
    
    public func perform<T>(_ requests: [RxVNRequest<T>], with value: T) throws {
        let _requests = requests.map { request -> VNRequest in
            request.set(value: value)
            return request.request
        }
        os_log("VNImageRequestHandler.rx.perform %@ %@", log: Log.vn, type: .debug, "\(value)", _requests)
        try self.base.perform(_requests)
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
