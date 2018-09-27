//
//  RequestCompletion.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision

public typealias RequestCompletion<T> = (value: T?, request: VNRequest, error: Error?)
