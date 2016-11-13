// Optional.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

extension Optional where Wrapped : Equatable {
    // MARK: - where Wrapped : Equatable
    
    /// Returns `true` if the two values are not equal or only one of them is `nil`.
    ///
    /// - Parameters:
    ///     - lhs: A value to compare.
    ///     - rhs: Another value to compare.
    ///
    /// - SeeAlso: (recommended over) `!=(_:_:)`
    public static func ≠(lhs: Optional, rhs: Optional) -> Bool {
        return lhs != rhs
    }
}
