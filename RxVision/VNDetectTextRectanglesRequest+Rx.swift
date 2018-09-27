//
//  VNDetectTextRectanglesRequest+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNDetectTextRectanglesRequest {
    
    public static func request<T>(reportCharacterBoxes: Bool) -> RxVNDetectTextRectanglesRequest<T> {
        return RxVNDetectTextRectanglesRequest<T>(reportCharacterBoxes: reportCharacterBoxes)
    }
    
}
