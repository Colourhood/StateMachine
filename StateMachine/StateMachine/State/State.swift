//
//  State.swift
//  StateMachine
//
//  Created by Andrei Villasana on 3/4/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import Foundation

public protocol State {
    var completed: (() -> Void)? { get set }
}
