//
//  RxVNRequestCompletionHandler.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift
import os.log

final class RxVNRequestCompletionHandler<T> {
    
    typealias Observer = AnyObserver<RequestCompletion<T>>
    
    var observer: Observer? = nil
    
    public var value: T? = nil
    public lazy var requestCompletionHandler: VNRequestCompletionHandler = { (request: VNRequest, error: Error?) in
        os_log("RxVNRequestCompletionHandler.requestCompletionHandler %@ %@", log: Log.vn, type: .debug, request, "\(error)")
        self.observer?.onNext(RequestCompletion(self.value, request, error))
    }
    
    init() {
    }
    
}
