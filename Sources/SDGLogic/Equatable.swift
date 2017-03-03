// Equatable.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

/// Checks for inequality.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
infix operator ≠: ComparisonPrecedence

extension Equatable {

    /// Returns `true` if the two values are inequal.
    ///
    /// - Parameters:
    ///     - lhs: A value to compare.
    ///     - rhs: Another value to compare.
    ///
    /// - SeeAlso: (recommended over) `!=(_:_:)`
    public static func ≠(lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}
