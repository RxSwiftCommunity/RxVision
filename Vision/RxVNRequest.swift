//
//  RxVNRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

public class RxVNRequest<T> {
    
    private let valueSubject: PublishSubject<T> = PublishSubject<T>()
    private lazy var _observable: Observable<_RequestCompletion> = Observable.create { (observer) in
        self.handler.observer = observer
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
    
    // MARK: - internal
    static func setAndMap<T>(_ requests: [RxVNRequest<T>], on value: T) -> [VNRequest] {
        return requests.map { request -> VNRequest in
            request.set(value: value)
            return request.request
        }
    }
    
}
