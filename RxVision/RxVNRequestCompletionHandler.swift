//
//  RxVNRequestCompletionHandler.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

final class RxVNRequestCompletionHandler<T> {
    
    typealias Observer = AnyObserver<RequestCompletion<T>>
    
    private let observer: Observer
    
    public var value: T? = nil
    public lazy var requestCompletionHandler: VNRequestCompletionHandler = { (request: VNRequest, error: Error?) in
        self.observer.onNext(RequestCompletion(self.value, request, error))
    }
    
    init(observer: Observer) {
        self.observer = observer
    }
    
}
