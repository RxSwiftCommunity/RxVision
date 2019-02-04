//
//  RequestSequence.swift
//  RxVision
//
//  Created by Maxim Volgin on 04/02/2019.
//  Copyright © 2019 Maxim Volgin. All rights reserved.
//

import Vision

typealias _SequenceRequest = (request: VNRequest, error: Error?)

public typealias SequenceRequest<T> = (value: T?, request: VNRequest, error: Error?)

