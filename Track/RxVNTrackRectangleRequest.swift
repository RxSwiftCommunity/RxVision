//
//  RxVNTrackRectangleRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNTrackRectangleRequest<T>: RxVNRequest<T> {
    
    public init() {
        let handler = RxVNRequestCompletionHandler()
        let request: VNTrackRectangleRequest = VNTrackRectangleRequest(completionHandler: handler.requestCompletionHandler)
        // TODO
        super.init(request: request, handler: handler)
    }
    
}
