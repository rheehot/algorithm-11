//
//  LinkedListable.swift
//  LinkedList
//
//  Created by 이동영 on 07/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

protocol LinkableList {
    associatedtype E
    
    mutating func addHead(at: Int) -> Void
    mutating func remove(at: Int) -> E?
    func count() -> Int
    func print() -> Void

}
