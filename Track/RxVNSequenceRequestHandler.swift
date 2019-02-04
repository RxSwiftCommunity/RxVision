//
//  RxVNSequenceRequestHandler.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

final class RxVNSequenceRequestHandler {
    
    typealias Observer = AnyObserver<_RequestCompletion>
    
    var observer: Observer? = nil
    
    public lazy var sequenceRequestHandler: VNSequenceRequestHandler = { (request: VNRequest, error: Error?) in
        self.observer?.onNext(_SequenceRequest(request, error))
    }
    
    init() {
    }
    
}
