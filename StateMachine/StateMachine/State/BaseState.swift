//
//  BaseState.swift
//  StateMachine
//
//  Created by Andrei Villasana on 3/4/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import Foundation

open class BaseState: State {
    // MARK: Class Properties
    public var completed: (() -> Void)?

    public init() {
        completion()
    }

    deinit {
        stateExit()
    }

    // MARK: Open methods
    open func stateEntry() {}
    open func stateExit() {}

    // MARK: Private methods
    private func completion() {
        completed = { [unowned self] in
            self.stateEntry()
        }
    }
}
