/*
 Equatable.swift

 This source file is part of the SDGLogic open source project.

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

// swiftlint:disable not_equal
/// Checks for inequality.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
infix operator ≠: ComparisonPrecedence
// swiftlint:enable not_equal

extension Equatable {

    // swiftlint:disable not_equal
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
    // swiftlint:enable not_equal
}
