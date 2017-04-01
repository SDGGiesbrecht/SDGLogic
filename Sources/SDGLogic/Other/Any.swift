/*
 Any.swift

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 */

// MARK: - Types

// [_Inherit Documentation: SDGLogic.Equatable.≠_]
/// Returns `true` if the two values are inequal.
///
/// - Parameters:
///     - lhs: A value to compare.
///     - rhs: Another value to compare.
///
/// - RecommendedOver: !=
public func ≠ (lhs: Any.Type?, rhs: Any.Type?) -> Bool {
    return lhs != rhs
}
