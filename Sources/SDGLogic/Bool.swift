/*
 Bool.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

/// Μία τιμή Μπουλ: `αληθής` ή `ψευδής`
public typealias Μπουλ = Bool

/// Der boolische Wert „wahr“.
public var wahr: Bool {
    return true
}
/// La valeur de Boole « vrai ».
public var vrai: Bool {
    return true
}
/// Η τιμή Μπουλ «αληθής».
public var αληθής: Bool {
    return true
}

/// Der boolische Wert „falsch“.
public var falsch: Bool {
    return false
}
/// La valeur de Boole « faux ».
public var faux: Bool {
    return false
}
/// Η τιμή Μπουλ «ψευδής».
public var ψευδής: Bool {
    return false
}

// [_Inherit Documentation: SDGLogic.Bool.¬_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical inverse of the operand. • 🇩🇪 Gibt die logische Verneinung des Operanden zurück. • 🇫🇷 Retourne l’inverse logique de l’opérande. • 🇬🇷 Επιστρέφει ο αντίστρηφος του τελεστέου.
///
/// - Parameters:
///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to invert. • 🇩🇪 Die Aussage, die verneint werden soll. • 🇫🇷 La proposition à inverser. • 🇬🇷 Η πρόταση που πρέπει να αντιστρέφεται.
///
/// - MutatingVariant: ¬=
///
/// - RecommendedOver: !
prefix operator ¬

extension Bool {

    // MARK: - 🇨🇦🇬🇧🇺🇸 Logic Operatiors • 🇩🇪 Logische Operatoren • 🇫🇷 Opérateurs de logique • 🇬🇷 Λογικού τελεστές

    // [_Define Documentation: SDGLogic.Bool.¬_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical inverse of the operand. • 🇩🇪 Gibt die logische Verneinung des Operanden zurück. • 🇫🇷 Retourne l’inverse logique de l’opérande. • 🇬🇷 Επιστρέφει ο αντίστρηφος του τελεστέου.
    ///
    /// - Parameters:
    ///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to invert. • 🇩🇪 Die Aussage, die verneint werden soll. • 🇫🇷 La proposition à inverser. • 🇬🇷 Η πρόταση που πρέπει να αντιστρέφεται.
    ///
    /// - MutatingVariant: ¬=
    ///
    /// - RecommendedOver: !
    public static prefix func ¬ (proposition: Bool) -> Bool {
        return !proposition
    }
}

// [_Inherit Documentation: SDGLogic.Bool.¬=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the operand by logical inversion. • 🇩🇪 Ändert den Operanden durch logische Verneinung. • 🇫🇷 Modifie l’opérande par l’inversion logique. • 🇬🇷 Αλλάζει τον τελεστέο με την λογική αναστροφή.
///
/// - Parameters:
///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to modify by inversion. • 🇩🇪 Die Aussage, die durch Verneinung geändert werden soll. • 🇫🇷 La proposition à modifier par l’inversion. • 🇬🇷 Η πρόταση που πρέπει να αλλάξεται με την αναστραφή.
///
/// - NonmutatingVariant: ¬
postfix operator ¬=

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.¬=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the operand by logical inversion. • 🇩🇪 Ändert den Operanden durch logische Verneinung. • 🇫🇷 Modifie l’opérande par l’inversion logique. • 🇬🇷 Αλλάζει τον τελεστέο με την λογική αναστροφή.
    ///
    /// - Parameters:
    ///     - proposition: 🇨🇦🇬🇧🇺🇸 The proposition to modify by inversion. • 🇩🇪 Die Aussage, die durch Verneinung geändert werden soll. • 🇫🇷 La proposition à modifier par l’inversion. • 🇬🇷 Η πρόταση που πρέπει να αλλάξεται με την αναστραφή.
    ///
    /// - NonmutatingVariant: ¬
    public static postfix func ¬= (proposition: inout Bool) {
        proposition = ¬proposition
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∧_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical conjunction of the two Boolean values. • 🇩🇪 Gibt die logische Konjunktion der zwei booleschen Werte. • 🇫🇷 Retourne la conjonction logique des deux valeurs de Boole. • 🇬🇷 Επιστρέφει τον λογικό συνδυασμό των τελεστέων.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` evaluates to `true`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` zu `wahr` auswertet.
///
/// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` évalue à `vrai`.
///
/// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `αληθής`.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert. • 🇫🇷 Une valeur de Boole. • 🇬🇷 Μία τιμή Μπουλ.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
///
/// - MutatingVariant: ∧=
///
/// - RecommendedOver: &&
infix operator ∧: LogicalConjunctionPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∧_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical conjunction of the two Boolean values. • 🇩🇪 Gibt die logische Konjunktion der zwei booleschen Werte. • 🇫🇷 Retourne la conjonction logique des deux valeurs de Boole. • 🇬🇷 Επιστρέφει τον λογικό συνδυασμό των τελεστέων.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` evaluates to `true`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` zu `wahr` auswertet.
    ///
    /// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` évalue à `vrai`.
    ///
    /// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `αληθής`.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert. • 🇫🇷 Une valeur de Boole. • 🇬🇷 Μία τιμή Μπουλ.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
    ///
    /// - MutatingVariant: ∧=
    ///
    /// - RecommendedOver: &&
    public static func ∧ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs && rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∧=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical conjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Konjunktion mit dem Rechten. • 🇫🇷 Modifie la valeur à gauche par la conjonction avec la droite. • 🇬🇷 Αλλάζει την αριστερή τιμή με τον λογικό συνδυασμό με την δεξιά.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` is `true`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` `wahr` ist.
///
/// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` est `vrai`.
///
/// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `αληθής`.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll. • 🇫🇷 La valeur de Boole à modifier. • 🇬🇷 Η τιμή Μπουλ που πρέπει να αλλάξεται.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
///
/// - NonmutatingVariant: ∧
infix operator ∧=: AssignmentPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∧=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical conjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Konjunktion mit dem Rechten. • 🇫🇷 Modifie la valeur à gauche par la conjonction avec la droite. • 🇬🇷 Αλλάζει την αριστερή τιμή με τον λογικό συνδυασμό με την δεξιά.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` is `true`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` `wahr` ist.
    ///
    /// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` est `vrai`.
    ///
    /// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `αληθής`.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll. • 🇫🇷 La valeur de Boole à modifier. • 🇬🇷 Η τιμή Μπουλ που πρέπει να αλλάξεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
    ///
    /// - NonmutatingVariant: ∧
    public static func ∧= (lhs: inout Bool, rhs: @autoclosure () throws -> Bool) rethrows {
        lhs = try lhs ∧ rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∨_]
/// 🇨🇦🇬🇧🇺🇸 Returns the logical disjunction of the two Boolean values. • 🇩🇪 Gibt die logische Disjunktion der zwei booleschen Werte. • 🇫🇷 Retourne la disjonction logique des deux valeurs de Boole. • 🇬🇷 Επιστρέφει την λογική διάζευξη των τελεστέων.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` evaluates to `false`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` zu `falsch` auswertet.
///
/// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` évalue à `faux`.
///
/// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `ψευδής`.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert. • 🇫🇷 Une valeur de Boole. • 🇬🇷 Μία τιμή Μπουλ.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
///
/// - MutatingVariant: ∨=
///
/// - RecommendedOver: ||
infix operator ∨: LogicalDisjunctionPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∨_]
    /// 🇨🇦🇬🇧🇺🇸 Returns the logical disjunction of the two Boolean values. • 🇩🇪 Gibt die logische Disjunktion der zwei booleschen Werte. • 🇫🇷 Retourne la disjonction logique des deux valeurs de Boole. • 🇬🇷 Επιστρέφει την λογική διάζευξη των τελεστέων.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` evaluates to `false`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` zu `falsch` auswertet.
    ///
    /// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` évalue à `faux`.
    ///
    /// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `ψευδής`.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 A Boolean value. • 🇩🇪 Ein boolischer Wert. • 🇫🇷 Une valeur de Boole. • 🇬🇷 Μία τιμή Μπουλ.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture qui a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
    ///
    /// - MutatingVariant: ∨=
    ///
    /// - RecommendedOver: ||
    public static func ∨ (lhs: Bool, rhs: @autoclosure () throws -> Bool) rethrows -> Bool {
        return try lhs || rhs
    }
}

// [_Inherit Documentation: SDGLogic.Bool.∨=_]
/// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical disjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Disjunktion mit dem Rechten. • 🇫🇷 Modifie la valeur à gauche par disjonction avac la droite. • 🇬🇷 Αλλάζει την αριστερή τιμή με την λογική διάζευξη με την δεξιά.
///
/// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` is `false`.
///
/// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` `falsch` ist.
///
/// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` est `faux`.
///
/// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `ψευδής`.
///
/// - Parameters:
///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll. • 🇫🇷 La valeur de Boole à modifier. • 🇬🇷 Η τιμή Μπουλ που πρέπει να αλλάξεται.
///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture que a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
///
/// - NonmutatingVariant: ∨
infix operator ∨=: AssignmentPrecedence

extension Bool {

    // [_Define Documentation: SDGLogic.Bool.∨=_]
    /// 🇨🇦🇬🇧🇺🇸 Modifies the left value by logical disjunction with the right. • 🇩🇪 Ändert den linken Wert durch logische Disjunktion mit dem Rechten. • 🇫🇷 Modifie la valeur à gauche par disjonction avac la droite. • 🇬🇷 Αλλάζει την αριστερή τιμή με την λογική διάζευξη με την δεξιά.
    ///
    /// 🇨🇦🇬🇧🇺🇸 This operator uses short‐circuit evaluation; `rhs` is only evaluated if `lhs` is `false`.
    ///
    /// 🇩🇪 Dieser Operator verwendet Kurzschlussauswertung; `rhs` wird nur ausgewertet, wenn `lhs` `falsch` ist.
    ///
    /// 🇫🇷 Cet opérateur utilise l’évaluation de court‐circuit ; `rhs` ne sera évalué que si `lhs` est `faux`.
    ///
    /// 🇬🇷 Αυτός ο τελεστής χρησιμοποιεί αξιολόγηση βραχυκυκλώματος· `rhs` δεν αξιολόγεται αν `lhs` αξιολογεί στο `ψευδής`.
    ///
    /// - Parameters:
    ///     - lhs: 🇨🇦🇬🇧🇺🇸 The Boolean value to modify. • 🇩🇪 Der boolische Wert, der geändert werden soll. • 🇫🇷 La valeur de Boole à modifier. • 🇬🇷 Η τιμή Μπουλ που πρέπει να αλλάξεται.
    ///     - rhs: 🇨🇦🇬🇧🇺🇸 A closure that results in another Boolean value. • 🇩🇪 Ein Funktionsabschluss, der einen weiteren booleschen Wert ergibt. • 🇫🇷 Une fermeture que a pour résultat une autre valeur de Boole. • 🇬🇷 Ένα κλείσιμο που οδηγεί σε μία άλλη τιμή Μπουλ.
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

/// N’exécute `suite` que si `condition` est `vrai`.
///
/// - Parameters:
///     - condition: La condition.
///     - suite: Une fermeture à exécuter en cas de `vrai`.
public func si(_ condition: Bool, _ suite: () throws -> Void) rethrows {
    if condition {
        try suite()
    }
}

/// Εκτελεί `συνέπεια` μόνο αν `προϋπόθεση` είναι `αληθής`.
///
/// - Parameters:
///     - προϋπόθεση: Η προϋπόθεση.
///     - συνέπεια: Ένα κλείσιμο που πρέπει να εκτελείται κατά «αληθής».
public func αν(_ προϋπόθεση: Μπουλ, _ συνέπεια: () throws -> Void) rethrows {
    if προϋπόθεση {
        try συνέπεια()
    }
}
