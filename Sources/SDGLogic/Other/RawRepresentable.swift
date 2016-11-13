// RawRepresentable.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

extension RawRepresentable where RawValue : Equatable {
    // MARK: - where RawValue : Equatable
    
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
}

extension RawRepresentable where Self : Equatable, Self.RawValue : Equatable {
    // MARK: - where Self : Equatable, Self.RawValue : Equatable
    
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
}
