/*
 RawRepresentable.swift

 This source file is part of the SDGLogic open source project.
 https://github.com/SDGGiesbrecht/SDGLogic

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

extension RawRepresentable where RawValue : Equatable {
    // MARK: - where RawValue : Equatable

    /// Returns `true` if the raw values are inequal.
    ///
    /// - Parameters:
    ///     - lhs: A value to compare.
    ///     - rhs: Another value to compare.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}

extension RawRepresentable where Self : Equatable, Self.RawValue : Equatable {
    // MARK: - where Self : Equatable, Self.RawValue : Equatable

    /// Returns `true` if the raw values are inequal.
    ///
    /// - Parameters:
    ///     - lhs: A value to compare.
    ///     - rhs: Another value to compare.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}
