//
//  RxVNTrackObjectRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNTrackObjectRequest<T>: RxVNTrackingRequest<T> {
    
    public init() {
        let handler = RxVNSequenceRequestHandler()
        let request: VNTrackObjectRequest = VNTrackObjectRequest(detectedObjectObservation = ..., completionHandler: handler.requestCompletionHandler)
        // TODO
        super.init(request: request, handler: handler)
    }
    
}
