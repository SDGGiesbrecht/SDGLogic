# SDGLogic

SDGLogic extends support for Boolean logic.

## SDGLogic provides:

* Operators: ≠, ¬, ∧, ∨, etc.

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
