//
//  RxVNRequestCompletionHandler.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

final class RxVNRequestCompletionHandler {
    
    typealias Observer = AnyObserver<_RequestCompletion>
    
    var observer: Observer? = nil
    
    public lazy var requestCompletionHandler: VNRequestCompletionHandler = { (request: VNRequest, error: Error?) in
        self.observer?.onNext(_RequestCompletion(request, error))
    }
    
    init() {
    }
    
}
