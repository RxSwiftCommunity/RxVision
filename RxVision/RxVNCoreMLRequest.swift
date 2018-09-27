//
//  RxVNCoreMLRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNCoreMLRequest<T>: RxVNRequest {
    
    typealias Observer = RxVNRequestCompletionHandler<T>.Observer
    
    private var handler: RxVNRequestCompletionHandler<T>?
    public lazy var observable: Observable<RequestCompletion<T>> = Observable.create { (observer) in
        self.handler = RxVNRequestCompletionHandler<T>(observer: observer)
        return Disposables.create()
    }
    private lazy var _request: VNCoreMLRequest = VNCoreMLRequest(model: self.model, completionHandler: self.handler?.requestCompletionHandler)
    private let model: VNCoreMLModel
    
    public init(model: VNCoreMLModel) {
        self.model = model
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
