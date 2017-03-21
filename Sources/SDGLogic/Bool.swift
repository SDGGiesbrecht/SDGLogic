/*
 Bool.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

/// Performs logical inversion.
///
/// - MutatingVariant: ¬=
///
/// - RecommendedOver: !
prefix operator ¬

/// Modifies the operand by logical inversion.
///
/// - NonmutatingVariant: ¬
postfix operator ¬=

/// Performs logical conjunction.
///
/// - MutatingVariant: ∧=
///
/// - RecommendedOver: &&
infix operator ∧: LogicalConjunctionPrecedence

/// Modifies the left side by logical conjunction with the right side.
///
/// - NonmutatingVariant: ∧
infix operator ∧=: AssignmentPrecedence

/// Performs logical disjunction.
///
/// - MutatingVariant: ∨=
///
/// - RecommendedOver: ||
infix operator ∨: LogicalDisjunctionPrecedence

/// Modifies the left side by logical disjuction with the right side.
///
/// - NonmutatingVariant: ∨
infix operator ∨=: AssignmentPrecedence

extension Bool {

    /// Returns the logical inverse of the operand.
    ///
    /// - Parameters:
    ///     - operand: The value to invert.
    ///
    /// - MutatingVariant: ¬=
    ///
    /// - RecommendedOver: !
    public static prefix func ¬ (proposition: Bool) -> Bool {
        return !proposition
    }

    /// Modifies the operand by logical inversion.
    ///
    /// - Parameters:
    ///     - operand: The value to modify by inversion.
    ///
    /// - NonmutatingVariant: ¬
    public static postfix func ¬= (proposition: inout Bool) {
        proposition = ¬proposition
    }

    /// Returns the logical conjunction of the two Boolean values.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `true`.
    ///
    /// - Parameters:
    ///     - lhs: A Boolean value.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - MutatingVariant: ∧=
    ///
    /// - RecommendedOver: &&
    public static func ∧ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs && rhs
    }

    /// Modifies the left value by logical conjunction with the right.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `true`.
    ///
    /// - Parameters:
    ///     - lhs: The Boolean value to modify.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - NonmutatingVariant: ∧
    public static func ∧= (lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∧ rhs
    }

    /// Returns the logical disjunction of the two Boolean values.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `false`.
    ///
    /// - Parameters:
    ///     - lhs: A Boolean value.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - MutatingVariant: ∨=
    ///
    /// - RecommendedOver: ||
    public static func ∨ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs || rhs
    }

    /// Modifies the left value by logical disjunction with the right.
    ///
    /// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `false`.
    ///
    /// - Parameters:
    ///     - lhs: The Boolean value to modify.
    ///     - rhs: A closure that results in another Boolean value.
    ///
    /// - NonmutatingVariant: ∨
    public static func ∨= (lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∨ rhs
    }
}
