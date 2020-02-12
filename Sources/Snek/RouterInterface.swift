//
//  RouterInterface.swift
//  Snek
//
//  Created by Philip Niedertscheider on 30.01.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

public protocol RouterInterface: PresenterToRouterInterface {
    
    associatedtype PresenterInterface
    
    var presenter: PresenterInterface { get set }
    
    init(presenter: PresenterInterface)
}
