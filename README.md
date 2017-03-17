<!--
 README.md

 This source file is part of the SDGLogic open source project.
 https://github.com/SDGGiesbrecht/SDGLogic

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 -->

# SDGLogic

SDGLogic extends support for Boolean logic.

## SDGLogic provides:

* Operators: ≠, ¬, ∧, ∨, etc.

(For a list of other modules in the SDG family, see [here](https://github.com/SDGGiesbrecht/SDG/blob/master/README.md).)

## Importing

SDGLogic is intended for use with the [Swift Package Manager](https://swift.org/package-manager/).

Simply add SDGLogic as a dependency in `Package.swift`:

```swift
let package = Package(
    ...
    dependencies: [
        ...
        .Package(url: "https://github.com/SDGGiesbrecht/SDGLogic", versions: "1.1.0" ..< "2.0.0")
    ]
)
```

SDGLogic can then be imported in source files:

```swift
import SDGLogic
```

## Usage Example

```swift
import SDGLogic

func tryOperators() {
    if ¬((true ∧ false) ∨ true) ≠ true {
        print("I’m confused...")
    }
}
```

## Documentation:

Complete API documentation is available [here](https://sdggiesbrecht.github.io/SDGLogic/).
