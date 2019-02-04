//
//  RxVNTrackObjectRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNTrackObjectRequest<T>: RxVNRequest<T> {
    
    public init() {
        let handler = RxVNRequestCompletionHandler()
        let request: VNTrackObjectRequest = VNTrackObjectRequest(completionHandler: handler.requestCompletionHandler)
        // TODO
        super.init(request: request, handler: handler)
    }
    
}
