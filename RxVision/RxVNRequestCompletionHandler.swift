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

final class RxVNRequestCompletionHandler {
    
    typealias Observer = AnyObserver<_RequestCompletion>
    
    var observer: Observer? = nil
    
    public lazy var requestCompletionHandler: VNRequestCompletionHandler = { (request: VNRequest, error: Error?) in
        os_log("RxVNRequestCompletionHandler.requestCompletionHandler %@ %@", log: Log.vn, type: .debug, request, "\(String(describing: error))")
        self.observer?.onNext(_RequestCompletion(request, error))
    }
    
    init() {
    }
    
}
