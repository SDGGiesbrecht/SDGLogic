/*
 RawRepresentable.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

extension RawRepresentable where RawValue : Equatable {
    // MARK: - 🇨🇦🇬🇧🇺🇸 where RawValue : Equatable • 🇩🇪 wo RawValue : Vergleichbar • 🇫🇷 ou RawValue : ComparablePourÉgalité • 🇬🇷 όπου RawValue : Συγκρίσιμος

    // [_Inherit Documentation: SDGLogic.Equatable.≠_]
    /// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales. • 🇬🇷 Επιστρέφει `αληθής` αν οι τιμές δεν είναι ίσες.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer. • 🇬🇷 Μία τιμή που πρέπει συγκρίνεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer. • 🇬🇷 Μία αλλη τιμή που πρέπει συγκρίνεται.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}

extension RawRepresentable where Self : Equatable, RawValue : Equatable {
    // MARK: - 🇨🇦🇬🇧🇺🇸 where Self : Equatable, RawValue : Equatable • 🇩🇪 wo Self : Vergleichbar, RawValue : Vergleichbar • 🇫🇷 ou Self: ComparablePourÉgalité, RawValue : ComparablePourÉgalité • 🇬🇷 όπου Self : Συγκρίσιμος, RawValue : Συγκρίσιμος

    // [_Inherit Documentation: SDGLogic.Equatable.≠_]
    /// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales. • 🇬🇷 Επιστρέφει `αληθής` αν οι τιμές δεν είναι ίσες.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer. • 🇬🇷 Μία τιμή που πρέπει συγκρίνεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer. • 🇬🇷 Μία αλλη τιμή που πρέπει συγκρίνεται.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Self, rhs: Self) -> Bool {
        return lhs != rhs
    }
}
