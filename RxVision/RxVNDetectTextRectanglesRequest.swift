//
//  RxVNDetectTextRectanglesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNDetectTextRectanglesRequest<T>: RxVNRequest<T> {
    
    private lazy var _request: VNDetectTextRectanglesRequest = VNDetectTextRectanglesRequest(completionHandler: self.handler?.requestCompletionHandler)

    override public init() {
        super.init()
    }
    
    override public var request: VNRequest {
        get {
            return _request
        }
    }
    
}
