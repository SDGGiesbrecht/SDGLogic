// RawRepresentable.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

extension RawRepresentable where RawValue : Equatable {
    // MARK: - where RawValue : Equatable
    
    // swiftlint:disable not_equal
    /// Returns `true` if the raw values are inequal.
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

extension RawRepresentable where Self : Equatable, Self.RawValue : Equatable {
    // MARK: - where Self : Equatable, Self.RawValue : Equatable
    
    // swiftlint:disable not_equal
    /// Returns `true` if the raw values are inequal.
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
