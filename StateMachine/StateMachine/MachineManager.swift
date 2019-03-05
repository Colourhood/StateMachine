//
//  Manager.swift
//  StateMachine
//
//  Created by Andrei Villasana on 3/4/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import Foundation

open class MachineManager {
    private(set) var machine: Machine?

    public init() {}

    public func migrateMachine(_ machine: Machine) {
        self.machine = machine
        machine.completed?()
    }
}
