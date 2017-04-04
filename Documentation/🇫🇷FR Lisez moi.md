<!--
 🇫🇷FR Lisez moi.md

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

IPA : [macOS](https://sdggiesbrecht.github.io/SDGLogic/macOS) • [Linux](https://sdggiesbrecht.github.io/SDGLogic/Linux) • [iOS](https://sdggiesbrecht.github.io/SDGLogic/iOS) • [watchOS](https://sdggiesbrecht.github.io/SDGLogic/watchOS) • [tvOS](https://sdggiesbrecht.github.io/SDGLogic/tvOS)

# SDGLogic

SDGLogic (« SDGLogique ») étend le support pour la logique de Boole.

> [Ὁ δέ, οὐ μαίνομαι, φησί, κράτιστε Φῆστε, ἀλλὰ ἀληθείας καὶ σωφροσύνης ῥήματα ἀποφθέγγομαι.<br>Je ne suis pas fou, très excellent Festus. Je prononce des paroles de vérité et de bon sens.](https://www.biblegateway.com/passage/?search=Acts+26&version=SBLGNT;SG21)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎שאול/Shaʼul

## Fonctionnalités

(L’IPA française n’a pas encore été corrigée par un locuteur natif et peut contenir des fautes d’orthographe. Des [suggestions d’améloiration](https://github.com/SDGGiesbrecht/SDGLogic/issues) serait bienvenues.)

- Opérateurs: `≠`, `¬`, `∧`, `∨`, etc.

(Pour une liste de projets lié, voir [ici](🇫🇷FR%20Projets%20liés.md).) <!--Skip in Jazzy-->

## Importation

SDGLogic est prévu pour utilisation avec le [Swift Package Manager](https://swift.org/package-manager/).

Ajoutez SDGLogic simplement dans la liste des dépendances dans `Package.swift` :

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

Puis SDGLogic peut être importé dans des fichiers sources :

```swift
import SDGLogic
```

## Example d’utilisation

```swift
import SDGLogic

func essayerOpérateurs() {
    si(¬((vrai ∧ faux) ∨ vrai) ≠ faux) {
        print("Je suis embrouillé...")
    }
}
```

## À propos

Le projet SDGLogic est maintenu par Jeremy David Giesbrecht.

Si SDGLogic vous permet d’économiser de l’argent, considérez à en [donner](https://paypal.me/JeremyGiesbrecht).

Si SDGLogic vous permet d’économiser du temps, considérez à en utiliser à [contribuer](https://github.com/SDGGiesbrecht/SDGLogic) au projet.

> [Ἄξιος γὰρ ὁ ἐργάτης τοῦ μισθοῦ αὐτοῦ ἐστι.<br>Car le travailleur est digne de son salaire.](https://www.biblegateway.com/passage/?search=Luke+10&version=SBLGNT;SG21)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;―‎ישוע/Yeshuʼa
