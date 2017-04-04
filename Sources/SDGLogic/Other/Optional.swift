/*
 Optional.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

/// Ένας τύπος που είναι ο τύπος «Τυλίγεται» ή `nil`.
public typealias Προαιρετικός<Τυλίγεται> = Any?

extension Optional {

    /// Der eingeschlossene Typ.
    public typealias Eingeschlossener = Wrapped
    /// Le type emballé.
    public typealias Emballé = Wrapped
    /// Ο τύπος που τυλίγεται.
    public typealias Τυλίγεται = Wrapped
}

extension Optional where Wrapped : Equatable {
    // MARK: - 🇨🇦🇬🇧🇺🇸 where Wrapped : Equatable • 🇩🇪 wo Eingeschlossener : Vergleichbar • 🇫🇷 ou Emballé : ComparablePourÉgalité • 🇬🇷 όπου Τυλίγεται : Συγκρίσιμος

    // [_Inherit Documentation: SDGLogic.Equatable.≠_]
    /// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales. • 🇬🇷 Επιστρέφει `αληθής` αν οι τιμές δεν είναι ίσες.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer. • 🇬🇷 Μία τιμή που πρέπει συγκρίνεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer. • 🇬🇷 Μία αλλη τιμή που πρέπει συγκρίνεται.
    ///
    /// - RecommendedOver: !=
    public static func ≠ (lhs: Optional, rhs: Optional) -> Bool {
        return lhs != rhs
    }
}

extension _OptionalNilComparisonType {

    // [_Inherit Documentation: SDGLogic.Equatable.≠_]
    /// 🇨🇦🇬🇧🇺🇸 Returns `true` if the two values are inequal. • 🇩🇪 Gibt `wahr` zurück, wenn die zwei Werte ungleich sind. • 🇫🇷 Retourne `vrai` si les deux valeurs ne sont pas égales. • 🇬🇷 Επιστρέφει `αληθής` αν οι τιμές δεν είναι ίσες.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A value to compare. • 🇩🇪 Ein Wert, der verglichen werden soll. • 🇫🇷 Une valeur á comparer. • 🇬🇷 Μία τιμή που πρέπει συγκρίνεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 Another value to compare. • 🇩🇪 Ein weiterer Wert, der verglichen werden soll. • 🇫🇷 Une autre valeur à comparer. • 🇬🇷 Μία αλλη τιμή που πρέπει συγκρίνεται.
    ///
    /// - RecommendedOver: !=
    public static func ≠ <T>(lhs: T?, rhs: _OptionalNilComparisonType) -> Bool {
        return lhs != rhs
        // Allows “x ≠ nil” even when x is not Equatable.
    }
}
