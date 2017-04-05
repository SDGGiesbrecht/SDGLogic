<!--
 🇩🇪DE Lies mich.md

 This source file is part of the SDGLogic open source project.
 https://sdggiesbrecht.github.io/SDGLogic/macOS

 Copyright ©2017 Jeremy David Giesbrecht and the SDGLogic project contributors.

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

[🇨🇦EN](🇨🇦EN%20Read%20Me.md) • [🇬🇧EN](🇬🇧EN%20Read%20Me.md) • [🇺🇸EN](🇺🇸EN%20Read%20Me.md) • [🇩🇪DE](🇩🇪DE%20Lies%20mich.md) • [🇫🇷FR](🇫🇷FR%20Lisez%20moi.md) • [🇬🇷ΕΛ](🇬🇷ΕΛ%20Με%20διαβάστε.md) <!--Skip in Jazzy-->

SAPs: [macOS](https://sdggiesbrecht.github.io/SDGLogic/macOS) • [Linux](https://sdggiesbrecht.github.io/SDGLogic/Linux) • [iOS](https://sdggiesbrecht.github.io/SDGLogic/iOS) • [watchOS](https://sdggiesbrecht.github.io/SDGLogic/watchOS) • [tvOS](https://sdggiesbrecht.github.io/SDGLogic/tvOS)

# SDGLogic

SDGLogic („SDGLogik“) erweitert die Unterstützung für boolesche Logik.

> [Ὁ δέ, οὐ μαίνομαι, φησί, κράτιστε Φῆστε, ἀλλὰ ἀληθείας καὶ σωφροσύνης ῥήματα ἀποφθέγγομαι.<br>Ich bin nicht verrückt, hochedler Festus. Ich rede wahre und vernünftige Worte.](https://www.biblegateway.com/passage/?search=Acts+26&version=SBLGNT;SCH2000)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎שאול/Shaʼul

(Für eine Liste verwandter Projekte, siehe [hier](🇩🇪DE%20Verwandte%20Projekte.md).) <!--Skip in Jazzy-->

## Einführung

SDGLogic ist für den Einsatz mit dem [Swift Package Manager](https://swift.org/package-manager/) vorgesehen.

Fügen Sie SDGLogic einfach in der Abhängigkeitsliste in `Package.swift` hinzu:

```swift
let package = Package(
    ...
    dependencies: [
        ...
        .Package(url: "https://github.com/SDGGiesbrecht/SDGLogic", versions: "1.3.0" ..< "2.0.0"),
        ...
    ]
)
```

Dann kann SDGLogic in Quelldateien eingeführt werden:

```swift
import SDGLogic
```

## Verwendungsbeispiel

```swift
import SDGLogic

func operatorenProbieren() {
    wenn(¬((wahr ∧ falsch) ∨ wahr) ≠ wahr) {
        print("Ich bin verwirrt ...")
    }
}
```

## Über

Das SDGLogic‐Projekt wird von Jeremy David Giesbrecht erhalten.

Wenn SDGLogic Ihnen Geld sparrt, denken Sie darüber, etwas davon zu [spenden](https://paypal.me/JeremyGiesbrecht).

Wenn SDGLogic Inhen Zeit sparrt, denken Sie darüber, etwas davon zu gebrauchen, um zum Projekt [beizutragen](https://github.com/SDGGiesbrecht/SDGLogic).

> [Ἄξιος γὰρ ὁ ἐργάτης τοῦ μισθοῦ αὐτοῦ ἐστι.<br>Denn der Arbeiter ist seines Lohns würdig.](https://www.biblegateway.com/passage/?search=Luke+10&version=SBLGNT;SCH2000)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎ישוע/Yeshuʼa
