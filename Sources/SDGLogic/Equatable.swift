/*
 Equatable.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

/// Ein Typ der verglichen werden kann.
public typealias Vergleichbar = Equatable
/// Un type qu’on peut comparer pour l’égalité.
public typealias ComparablePourÉgalité = Equatable

// [_Inherit Documentation: SDGLogic.Equatable.≠_]
/// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer.
///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer.
///
/// - RecommendedOver: !=
infix operator ≠: ComparisonPrecedence

extension Equatable {

    // [_Define Documentation: SDGLogic.Equatable.≠_]
    /// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}
