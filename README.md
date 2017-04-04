<!--
 README.md

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

 Soli Deo gloria.

 Licensed under the Apache Licence, Version 2.0.
 See http://www.apache.org/licenses/LICENSE-2.0 for licence information.
 -->

<!--
 !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!!
 This file is managed by Workspace.
 Manual changes will not persist.
 For more information, see:
 https://github.com/SDGGiesbrecht/Workspace/blob/master/Documentation/Read‐Me.md
 !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!! !!!!!!!
 -->

[🇨🇦EN](Documentation/🇨🇦EN%20Read%20Me.md) • [🇬🇧EN](Documentation/🇬🇧EN%20Read%20Me.md) • [🇺🇸EN](Documentation/🇺🇸EN%20Read%20Me.md) • [🇩🇪DE](Documentation/🇩🇪DE%20Lies%20mich.md) • [🇫🇷FR](Documentation/🇫🇷FR%20Lisez%20moi.md) • [🇬🇷ΕΛ](Documentation/🇬🇷ΕΛ%20Με%20διαβάστε.md) <!--Skip in Jazzy-->

APIs: [macOS](https://sdggiesbrecht.github.io/SDGLogic/macOS) • [Linux](https://sdggiesbrecht.github.io/SDGLogic/Linux) • [iOS](https://sdggiesbrecht.github.io/SDGLogic/iOS) • [watchOS](https://sdggiesbrecht.github.io/SDGLogic/watchOS) • [tvOS](https://sdggiesbrecht.github.io/SDGLogic/tvOS)

# SDGLogic

SDGLogic extends support for Boolean logic.

> [Ὁ δέ, οὐ μαίνομαι, φησί, κράτιστε Φῆστε, ἀλλὰ ἀληθείας καὶ σωφροσύνης ῥήματα ἀποφθέγγομαι.<br>I am not insane, most excellent Festus; Ι proclaim words of truth and reason.](https://www.biblegateway.com/passage/?search=Acts+26&version=SBLGNT;NIV)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎שאול/Shaʼul

## Features

- Operators: `≠`, `¬`, `∧`, `∨`, etc.

(For a list of related projecs, see [here](Documentation/🇨🇦EN%20Related%20Projects.md).) <!--Skip in Jazzy-->

## Importing

SDGLogic is intended for use with the [Swift Package Manager](https://swift.org/package-manager/).

Simply add SDGLogic as a dependency in `Package.swift`:

```swift
let package = Package(
    ...
    dependencies: [
        ...
        .Package(url: "https://github.com/SDGGiesbrecht/SDGLogic", versions: "1.2.0" ..< "2.0.0"),
        ...
    ]
)
```

SDGLogic can then be imported in source files:

```swift
import SDGLogic
```

## Example Usage

```swift
import SDGLogic

private func tryOperators() {
    if ¬((true ∧ false) ∨ true) ≠ true {
        print("I’m confused...")
    }
}
```

## About

The SDGLogic project is maintained by Jeremy David Giesbrecht.

If SDGLogic saves you money, consider giving some of it as a [donation](https://paypal.me/JeremyGiesbrecht).

If SDGLogic saves you time, consider devoting some of it to [contributing](https://github.com/SDGGiesbrecht/SDGLogic) back to the project.

> [Ἄξιος γὰρ ὁ ἐργάτης τοῦ μισθοῦ αὐτοῦ ἐστι.<br>For the worker is worthy of his wages.](https://www.biblegateway.com/passage/?search=Luke+10&version=SBLGNT;NIV)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎ישוע/Yeshuʼa
