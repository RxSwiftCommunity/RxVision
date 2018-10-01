//
//  RxVNRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift
import os.log

public class RxVNRequest<T> {
    
    private let valueSubject: PublishSubject<T> = PublishSubject<T>()
    private lazy var _observable: Observable<_RequestCompletion> = Observable.create { (observer) in
        self.handler.observer = observer
        os_log("RxVNRequest.observable %@", log: Log.vn, type: .debug, "\(self.handler)")
        return Disposables.create()
    }
    
    public lazy var observable: Observable<RequestCompletion<T>> = Observable.zip(valueSubject, _observable) {
        return RequestCompletion($0, $1.0, $1.1)
    }
    
    public func set(value: T) {
        self.valueSubject.onNext(value)
    }
    
    public let request: VNRequest
    private let handler: RxVNRequestCompletionHandler
    
    init(request: VNRequest, handler: RxVNRequestCompletionHandler) {
        self.request = request
        self.handler = handler
    }
    
    func requestCompletionHandler(request: VNRequest, error: Error?) {
        preconditionFailure("This method must be overridden")
    }
    
}
