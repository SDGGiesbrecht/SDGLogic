// Optional.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
//
// [_end of file header_]

extension Optional where Wrapped : Equatable {
    // MARK: - where Wrapped : Equatable
    
    // swiftlint:disable not_equal
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
    // swiftlint:enable not_equal
}

extension _OptionalNilComparisonType {
    
    // swiftlint:disable not_equal
    /// Returns `true` if the left side is non‐`nil`.
    ///
    /// - Parameters:
    ///     - lhs: A value to check.
    ///     - rhs: `nil`
    ///
    /// - SeeAlso: (recommended over) `!=(_:_:)`
    public static func ≠<T>(lhs: T?, rhs: _OptionalNilComparisonType) -> Bool {
        // Allows “x ≠ nil” even when x is not Equatable.
        
        return lhs != rhs
    }
    // swiftlint:enable not_equal
}
