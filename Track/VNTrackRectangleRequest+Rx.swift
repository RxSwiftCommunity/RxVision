//
//  VNTrackRectangleRequest+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNTrackRectangleRequest {
    
    public static func request<T>(rectangleObservation observation: VNRectangleObservation) -> RxVNTrackRectangleRequest<T> {
        return RxVNTrackRectangleRequest<T>(rectangleObservation: observation)
    }
    
}
