/*
 Bool.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

/// Der boolische Wert „wahr“.
public var wahr: Bool {
    return true
}

/// Der boolische Wert „falsch“.
public var falsch: Bool {
    return false
}

// [_Inherit Documentation: SDGLogic.Bool.¬_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical inverse of the operand. • 🇩🇪 Gibt die logische Verneinung des Operanden zurück.
///
/// - Parameters:
///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to invert. 🇩🇪 Die Aussage, die verneint werden soll.
///
/// - MutatingVariant: ¬=
///
/// - RecommendedOver: !
prefix operator ¬

extension Bool {

    // MARK: - 🇨🇦🇬🇧🇺🇸 Logic Operatiors • 🇩🇪 Logische Operatoren

    // [_Define Documentation: SDGLogic.Bool.¬_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical inverse of the operand. • 🇩🇪 Gibt die logische Verneinung des Operanden zurück.
    ///
    /// - Parameters:
    ///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to invert. 🇩🇪 Die Aussage, die verneint werden soll.
    ///
    /// - MutatingVariant: ¬=
    ///
    /// - RecommendedOver: !
    public static prefix func ¬ (proposition: Bool) -> Bool {
        return !proposition
    }
}

// [_Inherit Documentation: SDGLogic.Bool.¬=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the operand by logical inversion. • 🇩🇪 Ändert den Operanden durch logische Verneinung.
///
/// - Parameters:
///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to modify by inversion. • 🇩🇪 Die Aussage, die durch Verneinung geändert werden soll.
///
/// - NonmutatingVariant: ¬
postfix operator ¬=

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.¬=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the operand by logical inversion. • 🇩🇪 Ändert den Operanden durch logische Verneinung.
    ///
    /// - Parameters:
    ///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to modify by inversion. • 🇩🇪 Die Aussage, die durch Verneinung geändert werden soll.
    ///
    /// - NonmutatingVariant: ¬
    public static postfix func ¬= (proposition: inout Bool) {
        proposition = ¬proposition
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∧_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical conjunction of the two Boolean values. • 🇩🇪 Gibt die logische Konjunktion der zwei booleschen Werte.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `true`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` zu `wahr` auswertet.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
///
/// - MutatingVariant: ∧=
///
/// - RecommendedOver: &&
infix operator ∧: LogicalConjunctionPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∧_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical conjunction of the two Boolean values. • 🇩🇪 Gibt die logische Konjunktion der zwei booleschen Werte.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `true`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` zu `wahr` auswertet.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
    ///
    /// - MutatingVariant: ∧=
    ///
    /// - RecommendedOver: &&
    public static func ∧ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs && rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∧=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical conjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Konjunktion mit dem Rechten.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `true`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` `wahr` ist.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
///
/// - NonmutatingVariant: ∧
infix operator ∧=: AssignmentPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∧=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical conjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Konjunktion mit dem Rechten.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `true`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` `wahr` ist.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
    ///
    /// - NonmutatingVariant: ∧
    public static func ∧= (lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∧ rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∨_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical disjunction of the two Boolean values. • 🇩🇪 Gibt die logische Disjunktion der zwei booleschen Werte.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `false`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` zu `falsch` auswertet.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
///
/// - MutatingVariant: ∨=
///
/// - RecommendedOver: ||
infix operator ∨: LogicalDisjunctionPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∨_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical disjunction of the two Boolean values. • 🇩🇪 Gibt die logische Disjunktion der zwei booleschen Werte.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` evaluates to `false`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` zu `falsch` auswertet.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
    ///
    /// - MutatingVariant: ∨=
    ///
    /// - RecommendedOver: ||
    public static func ∨ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs || rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∨=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical disjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Disjunktion mit dem Rechten.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `false`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` `falsch` ist.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
///
/// - NonmutatingVariant: ∨
infix operator ∨=: AssignmentPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∨=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical disjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Disjunktion mit dem Rechten.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation: `rhs` is only evaluated if `lhs` is `false`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung: `rhs` wird nur ausgewertet, wenn `lhs` `falsch` ist.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt.
    ///
    /// - NonmutatingVariant: ∨
    public static func ∨= (lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∨ rhs
    }
}

/// Führt `folge` nur aus, wenn `bedingung` `wahr` ist.
///
/// - Parameters:
///     - bedingung: Die Bedingung.
///     - folge: Ein Funktionsabschluss, der bei `wahr` ausgeführt werden soll.
public func wenn(_ bedingung: Bool, _ folge: () throws -> Void) rethrows {
    if bedingung {
        try folge()
    }
}
