//
//  StateMachine.swift
//  StateMachine
//
//  Created by Andrei Villasana on 3/4/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import Foundation

open class StateMachine: BaseMachine {
    private(set) var state: State?

    internal override init() {}

    public func changeState(_ state: State) {
        self.state = state
        state.completed?()
    }
}
