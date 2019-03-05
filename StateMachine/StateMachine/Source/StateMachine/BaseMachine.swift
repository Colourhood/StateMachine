//
//  BaseMachine.swift
//  StateMachine
//
//  Created by Andrei Villasana on 3/4/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import Foundation

open class BaseMachine: Machine {
    // MARK: Class Properties
    public var completed: (() -> Void)?

    public init() {
        migrateMachine()
    }

    deinit {
        machineExit()
    }

    // MARK: Open methods
    open func machineEntry() {}
    open func machineExit() {}

    // MARK: Private methods
    private func migrateMachine() {
        completed = { [unowned self] in
            self.machineEntry()
        }
    }
}
