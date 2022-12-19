//
//  Encodable+Extension.swift
//  BeFake
//
//  Created by Premiersoft on 16/12/22.
//

import Foundation

extension Encodable {
    public func toData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
}
