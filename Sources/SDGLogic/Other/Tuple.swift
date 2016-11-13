// Tuple.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

// MARK: - Tuples

/// Returns `true` if any corresponding components of the two tuples are not equal.
///
/// - Parameters:
///     - lhs: A tuple to compare.
///     - rhs: Another tuple to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠<A : Equatable, B : Equatable>(lhs: (A, B), rhs: (A, B)) -> Bool {
    return lhs != rhs
}

/// Returns `true` if any corresponding components of the two tuples are not equal.
///
/// - Parameters:
///     - lhs: A tuple to compare.
///     - rhs: Another tuple to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠<A : Equatable, B : Equatable, C : Equatable>(lhs: (A, B, C), rhs: (A, B, C)) -> Bool {
    return lhs != rhs
}

/// Returns `true` if any corresponding components of the two tuples are not equal.
///
/// - Parameters:
///     - lhs: A tuple to compare.
///     - rhs: Another tuple to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠<A : Equatable, B : Equatable, C : Equatable, D : Equatable>(lhs: (A, B, C, D), rhs: (A, B, C, D)) -> Bool {
    return lhs != rhs
}

/// Returns `true` if any corresponding components of the two tuples are not equal.
///
/// - Parameters:
///     - lhs: A tuple to compare.
///     - rhs: Another tuple to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠<A : Equatable, B : Equatable, C : Equatable, D : Equatable, E : Equatable>(lhs: (A, B, C, D, E), rhs: (A, B, C, D, E)) -> Bool {
    return lhs != rhs
}

/// Returns `true` if any corresponding components of the two tuples are not equal.
///
/// - Parameters:
///     - lhs: A tuple to compare.
///     - rhs: Another tuple to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠<A : Equatable, B : Equatable,  C : Equatable, D : Equatable, E : Equatable, F : Equatable>(lhs: (A, B, C, D, E, F), rhs: (A, B, C, D, E, F)) -> Bool {
    return lhs != rhs
}
