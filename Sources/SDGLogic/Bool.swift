/*
 Bool.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

// [_Inherit Documentation: SDGLogic.Bool.¬_]
/// Returns the logical inverse of the operand.
///
/// - Parameters:
///     - operand: The value to invert.
///
/// - MutatingVariant: ¬=
///
/// - RecommendedOver: !
prefix operator ¬

// [_Inherit Documentation: SDGLogic.Bool.¬=_]
/// Modifies the operand by logical inversion.
///
/// - Parameters:
///     - operand: The value to modify by inversion.
///
/// - NonmutatingVariant: ¬
postfix operator ¬=

// [_Inherit Documentation: SDGLogic.Bool.∧_]
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
infix operator ∧: LogicalConjunctionPrecedence

// [_Inherit Documentation: SDGLogic.Bool.∧=_]
/// Modifies the left value by logical conjunction with the right.
///
/// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `true`.
///
/// - Parameters:
///     - lhs: The Boolean value to modify.
///     - rhs: A closure that results in another Boolean value.
///
/// - NonmutatingVariant: ∧
infix operator ∧=: AssignmentPrecedence

// [_Inherit Documentation: SDGLogic.Bool.∨_]
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
infix operator ∨: LogicalDisjunctionPrecedence

// [_Inherit Documentation: SDGLogic.Bool.∨=_]
/// Modifies the left value by logical disjunction with the right.
///
/// This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `false`.
///
/// - Parameters:
///     - lhs: The Boolean value to modify.
///     - rhs: A closure that results in another Boolean value.
///
/// - NonmutatingVariant: ∨
infix operator ∨=: AssignmentPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.¬_]
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

    // [_Define Documentation: SDGLogic.Bool.¬=_]
    /// Modifies the operand by logical inversion.
    ///
    /// - Parameters:
    ///     - operand: The value to modify by inversion.
    ///
    /// - NonmutatingVariant: ¬
    public static postfix func ¬= (proposition: inout Bool) {
        proposition = ¬proposition
    }

    // [_Define Documentation: SDGLogic.Bool.∧_]
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

    // [_Define Documentation: SDGLogic.Bool.∧=_]
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

    // [_Define Documentation: SDGLogic.Bool.∨_]
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

    // [_Define Documentation: SDGLogic.Bool.∨=_]
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
