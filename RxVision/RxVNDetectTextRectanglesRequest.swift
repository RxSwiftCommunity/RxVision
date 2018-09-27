//
//  RxVNDetectTextRectanglesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNDetectTextRectanglesRequest<T>: RxVNRequest {
    
    typealias Observer = RxVNRequestCompletionHandler<T>.Observer
    
    private var handler: RxVNRequestCompletionHandler<T>?
    
    public lazy var observable: Observable<RequestCompletion<T>> = Observable.create { (observer) in
        self.handler = RxVNRequestCompletionHandler<T>(observer: observer)
        return Disposables.create()
    }
    private lazy var _request: VNDetectTextRectanglesRequest = VNDetectTextRectanglesRequest(completionHandler: self.handler?.requestCompletionHandler)

    public init() {
    }
    
    public var request: VNRequest {
        get {
            return _request
        }
    }
    
    public var value: T? {
        get {
            return self.handler?.value
        }
        set {
            self.handler?.value = newValue
        }
    }
    
}
