/*
 RawRepresentableExample.swift

 This source file is part of the SDGLogic open source project.
 https://github.com/SDGGiesbrecht/SDGLogic

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

struct RawRepresentableExample: RawRepresentable {
    
    typealias RawValue = Bool
    
    init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    var rawValue: RawValue
}

struct EquatableRawRepresentableExample: Equatable, RawRepresentable {
    
    typealias RawValue = Bool
    
    init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
    
    var rawValue: RawValue
}
