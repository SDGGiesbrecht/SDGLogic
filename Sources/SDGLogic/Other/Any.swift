/*
 Any.swift

 This source file is part of the SDGLogic open source project.

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

// MARK: - Types

// swiftlint:disable not_equal
/// Returns `true` if the two types are not identical or only one of them is `nil`.
///
/// - Parameters:
///     - lhs: A type to compare.
///     - rhs: Another type to compare.
///
/// - SeeAlso: (recommended over) `!=(_:_:)`
public func ≠(lhs: Any.Type?, rhs: Any.Type?) -> Bool {
    return lhs != rhs
}
// swiftlint:enable not_equal
