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
    
    public lazy var observable: Observable<RequestCompletion<T>> = Observable.create { (observer) in
        self.handler.observer = observer
        os_log("RxVNRequest.observable %@", log: Log.vn, type: .debug, "\(self.handler)")
        return Disposables.create()
    }
    
    public var value: T? = nil
    public let request: VNRequest
    private let handler: RxVNRequestCompletionHandler<T>
    
    init(request: VNRequest, handler: RxVNRequestCompletionHandler<T>) {
        self.request = request
        self.handler = handler
    }
    
    func requestCompletionHandler(request: VNRequest, error: Error?) {
        preconditionFailure("This method must be overridden")
    }
    
}
