// RawRepresentableExample.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

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
