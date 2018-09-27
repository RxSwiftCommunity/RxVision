//
//  RxVNRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public class RxVNRequest<T> {
    
    typealias Observer = RxVNRequestCompletionHandler<T>.Observer
    
    var handler: RxVNRequestCompletionHandler<T>?
    
    public var value: T? {
        get {
            return self.handler?.value
        }
        set {
            self.handler?.value = newValue
        }
    }
    public lazy var observable: Observable<RequestCompletion<T>> = Observable.create { (observer) in
        self.handler = RxVNRequestCompletionHandler<T>(observer: observer)
        return Disposables.create()
    }
    public var request: VNRequest { get {
            preconditionFailure("This method must be overridden")
        }
    }

    init() {
    }
    
    
}
