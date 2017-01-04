// Bool.swift
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

// swiftlint:disable not
/// Performs logical inversion.
///
/// - SeeAlso: `¬=` (mutating variant)
///
/// - SeeAlso: (recommended over) `!`
prefix operator ¬
// swiftlint:enable not

/// Modifies the operand by logical inversion.
///
/// - SeeAlso: `¬` (non‐mutating variant)
postfix operator ¬=

// swiftlint:disable conjunction
/// Performs logical conjunction.
///
/// - SeeAlso: `∧=` (mutating variant)
///
/// - SeeAlso: (recommended over) `&&`
infix operator ∧: LogicalConjunctionPrecedence
// swiftlint:enable conjunction

/// Modifies the left side by logical conjunction with the right side.
///
/// - SeeAlso: `∧` (non‐mutating variant)
infix operator ∧=: AssignmentPrecedence

// swiftlint:disable disjunction
/// Performs logical disjunction.
///
/// - SeeAlso: `∨=` (mutating variant)
///
/// - SeeAlso: (recommended over) `||`
infix operator ∨: LogicalDisjunctionPrecedence
// swiftlint:enable disjunction

/// Modifies the left side by logical disjuction with the right side.
///
/// - SeeAlso: `∨` (non‐mutating variant)
infix operator ∨=: AssignmentPrecedence

extension Bool {

    // swiftlint:disable not
    /// Returns the logical inverse of the operand.
    ///
    /// - Parameters:
    ///     - operand: The value to invert.
    ///
    /// - SeeAlso: `¬=(_:)` (mutating variant)
    ///
    /// - SeeAlso: (recommended over) `!(_:)`
    public static prefix func ¬(proposition: Bool) -> Bool {
        return !proposition
    }
    // swiftlint:enable not
    
    /// Modifies the operand by logical inversion.
    ///
    /// - Parameters:
    ///     - operand: The value to modify by inversion.
    ///
    /// - SeeAlso: `¬(_:)` (non‐mutating variant)
    public static postfix func ¬=(proposition: inout Bool) {
        proposition = ¬proposition
    }
    
    // swiftlint:disable conjunction
    /// Returns the logical conjunction of the two Boolean values.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `true`.
    ///
    /// - Parameters:
    ///     - lhs: A Boolean value.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - SeeAlso: `∧=(_:_:)` (mutating variant)
    ///
    /// - SeeAlso: (recommended over) `&&(_:_:)`
    public static func ∧(lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs && rhs
    }
    // swiftlint:enable conjunction
    
    /// Modifies the left value by logical conjunction with the right.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `true`.
    ///
    /// - Parameters:
    ///     - lhs: The Boolean value to modify.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - SeeAlso: `∧(_:_:)` (non‐mutating variant)
    public static func ∧=(lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∧ rhs
    }
    
    // swiftlint:disable disjunction
    /// Returns the logical disjunction of the two Boolean values.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `false`.
    ///
    /// - Parameters:
    ///     - lhs: A Boolean value.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - SeeAlso: `∨=(_:_:)` (mutating variant)
    ///
    /// - SeeAlso: (recommended over) `||(_:_:)`
    public static func ∨(lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs || rhs
    }
    // swiftlint:enable disjunction
    
    /// Modifies the left value by logical disjunction with the right.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `false`.
    ///
    /// - Parameters:
    ///     - lhs: The Boolean value to modify.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - SeeAlso: `∨(_:_:)` (non‐mutating variant)
    public static func ∨=(lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∨ rhs
    }
}
