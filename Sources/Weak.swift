//
//  Weak.swift
//  BTree
//
//  Created by Károly Lőrentey on 2016-02-11.
//  Copyright © 2015–2017 Károly Lőrentey.
//

internal struct Weak<T: AnyObject> {
    weak var value: T?

    init(_ value: T) {
        self.value = value
    }
}

extension Weak: Equatable where T: Equatable {
    // we want to compile under xcode 10.2
    // but https://forums.swift.org/t/struct-with-weak-member-prevents-synthesized-equatable/19778/12
    static func == (lhs: Weak<T>, rhs: Weak<T>) -> Bool {
        return lhs.value == rhs.value
    }
}
extension Weak: Hashable where T: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
}


#if swift(>=4.2)
extension Weak: Codable where T: Codable {}
#endif
