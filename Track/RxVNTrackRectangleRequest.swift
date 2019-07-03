//
//  RxVNTrackRectangleRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNTrackRectangleRequest<T>: RxVNRequest<T> {
    
    public init(rectangleObservation observation: VNRectangleObservation) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNTrackRectangleRequest = VNTrackRectangleRequest(rectangleObservation: observation, completionHandler: handler.requestCompletionHandler)
        super.init(request: request, handler: handler)
    }
    
}
