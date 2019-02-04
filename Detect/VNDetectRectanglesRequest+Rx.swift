//
//  VNDetectRectanglesRequest+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 02/10/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNDetectRectanglesRequest {
    
    public static func request<T>() -> RxVNDetectRectanglesRequest<T> {
        return RxVNDetectRectanglesRequest<T>()
    }
    
}
