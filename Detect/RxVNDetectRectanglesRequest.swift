//
//  RxVNDetectRectanglesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 02/10/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNDetectRectanglesRequest<T>: RxVNRequest<T> {
    
    public init() {
        let handler = RxVNRequestCompletionHandler()
        let request: VNDetectRectanglesRequest = VNDetectRectanglesRequest(completionHandler: handler.requestCompletionHandler)
        // TODO
        super.init(request: request, handler: handler)
    }
    
}
