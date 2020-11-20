//
//  PresenterInterface.swift
//  Snek
//
//  Created by Philip Niedertscheider on 30.01.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

// swiftlint:disable line_length

public protocol PresenterInterface: ViewToPresenterInterface & InteractorToPresenterInterface & RouterToPresenterInterface {

    associatedtype InteractorInterface
    associatedtype RouterInterface
    associatedtype ViewInterface

    var interactor: InteractorInterface { get set }
    var router: RouterInterface { get set }
    var view: ViewInterface! { get set }

    init(interactor: InteractorInterface, router: RouterInterface)
}
