/*
 Optional.swift

 This source file is part of the SDGLogic open source project.
 https://github.com/SDGGiesbrecht/SDGLogic

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

extension Optional where Wrapped : Equatable {
    // MARK: - where Wrapped : Equatable

    /// Returns `true` if the two values are not equal or only one of them is `nil`.
    ///
    /// - Parameters:
    ///     - lhs: A value to compare.
    ///     - rhs: Another value to compare.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Optional, rhs: Optional) -> Bool {
        return lhs != rhs
    }
}

extension _OptionalNilComparisonType {

    /// Returns `true` if the left side is non‐`nil`.
    ///
    /// - Parameters:
    ///     - lhs: A value to check.
    ///     - rhs: `nil`
    ///
    /// - RecommendedOver: !=
    public static func ≠ <T>(lhs: T?, rhs: _OptionalNilComparisonType) -> Bool {
        return lhs != rhs
        // Allows “x ≠ nil” even when x is not Equatable.
    }
}
