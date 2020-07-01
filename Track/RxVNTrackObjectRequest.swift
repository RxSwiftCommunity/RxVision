//
//  RxVNTrackObjectRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

@available(iOS 11.0, *)
public final class RxVNTrackObjectRequest<T>: RxVNRequest<T> {
    
    public init(detectedObjectObservation observation: VNDetectedObjectObservation) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNTrackObjectRequest = VNTrackObjectRequest(detectedObjectObservation: observation, completionHandler: handler.requestCompletionHandler)
        super.init(request: request, handler: handler)
    }
    
}
