//
//  Array+Only.swift
//  Memorize
//
//  Created by Guilherme Calabria Lopes on 25.08.20.
//  Copyright © 2020 Guilherme Calabria Lopes. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
