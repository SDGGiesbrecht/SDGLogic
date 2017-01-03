// SDGLogicTests.swift
//
// This source file is part of the SDGLogic open source project.
//
// Copyright ©2016–2017 Jeremy David Giesbrecht and the SDGLogic contributors.
//
// Soli Deo gloria
//
// Licensed under the Apache License, Version 2.0
// See http://www.apache.org/licenses/LICENSE-2.0 for licence information.

import XCTest
@testable import SDGLogic

class SDGLogicTests: XCTestCase {
    
    func testBool() {
        var variable = false
        
        XCTAssertFalse(true ≠ true)
        XCTAssertFalse(false ≠ false)
        XCTAssert(true ≠ false)
        XCTAssert(false ≠ true)
        
        XCTAssert(¬true == false)
        XCTAssert(¬false == true)
        variable = false
        variable¬=
        XCTAssert(variable == true)
        
        XCTAssert(true ∧ true)
        XCTAssertFalse(false ∧ false)
        XCTAssertFalse(true ∧ false)
        XCTAssertFalse(false ∧ true)
        variable = true
        variable ∧= false
        XCTAssert(variable == false)
        
        XCTAssert(true ∨ true)
        XCTAssertFalse(false ∨ false)
        XCTAssert(true ∨ false)
        XCTAssert(false ∨ true)
        variable = false
        variable ∨= true
        XCTAssert(variable == true)
    }
    
    func testAny() {
        XCTAssertFalse(Bool.self ≠ Bool.self)
        XCTAssert(Bool.self ≠ Int.self)
    }
    
    func testOptional() {
        let a: Bool? = true
        let b: Bool? = nil
        
        XCTAssertFalse(a ≠ a)
        XCTAssert(a ≠ b)
        XCTAssert(a ≠ false)
        XCTAssertFalse(b ≠ b)
        
        XCTAssertFalse(b ≠ nil)
        XCTAssert(a ≠ nil)
        
        let c: TypeExample? = TypeExample()
        let d: TypeExample? = nil
        
        XCTAssert(c ≠ nil)
        XCTAssertFalse(d ≠ nil)
    }
    
    func testTuple() {
        XCTAssertFalse((true, true) ≠ (true, true))
        XCTAssert((true, true) ≠ (true, false))
        
        XCTAssertFalse((true, true, true) ≠ (true, true, true))
        XCTAssert((true, true, true) ≠ (true, true, false))
        
        XCTAssertFalse((true, true, true, true) ≠ (true, true, true, true))
        XCTAssert((true, true, true, true) ≠ (true, true, true, false))
        
        XCTAssertFalse((true, true, true, true, true) ≠ (true, true, true, true, true))
        XCTAssert((true, true, true, true, true) ≠ (true, true, true, true, false))
        
        XCTAssertFalse((true, true, true, true, true, true) ≠ (true, true, true, true, true, true))
        XCTAssert((true, true, true, true, true, true) ≠ (true, true, true, true, true, false))
    }
    
    func testRawRepresentable() {
        let rawTrue = RawRepresentableExample(rawValue: true)
        let rawFalse = RawRepresentableExample(rawValue: false)
        
        XCTAssertFalse(rawTrue ≠ rawTrue)
        XCTAssertFalse(rawFalse ≠ rawFalse)
        XCTAssert(rawTrue ≠ rawFalse)
        XCTAssert(rawFalse ≠ rawTrue)
        
        let equatableTrue = EquatableRawRepresentableExample(rawValue: true)
        let equatableFalse = EquatableRawRepresentableExample(rawValue: false)
        
        XCTAssertFalse(equatableTrue ≠ equatableTrue)
        XCTAssertFalse(equatableFalse ≠ equatableFalse)
        XCTAssert(equatableTrue ≠ equatableFalse)
        XCTAssert(equatableFalse ≠ equatableTrue)
    }

    static var allTests : [(String, (SDGLogicTests) -> () throws -> Void)] {
        return [
            ("testBool", testBool),
            ("testAny", testAny),
            ("testOptional", testOptional),
            ("testTuple", testTuple),
            ("testRawRepresentable", testRawRepresentable),
        ]
    }
}
