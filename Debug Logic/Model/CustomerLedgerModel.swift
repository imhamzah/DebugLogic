//
//  CustomerLedgerModel.swift
//  Debug Logic
//
//  Created by Ameer Hamza on 24/04/2020.
//  Copyright © 2020 Ameer Hamza. All rights reserved.
//

import Foundation

// MARK: - CustomerLedgerModel
struct CustomerLedgerModel: Codable {
    let msg: String?
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable {
    let cLedgerID, entryDate, cusID, invoiceNo: String?
    let details: Details?
    let invGrandTotal, paidAmount, invBalanceAmount, cusTotalBalance: String?
    let entryType: String?
    let addedBy: AddedBy?

    enum CodingKeys: String, CodingKey {
        case cLedgerID = "c_ledger_id"
        case entryDate = "entry_date"
        case cusID = "cus_id"
        case invoiceNo = "invoice_no"
        case details
        case invGrandTotal = "inv_grand_total"
        case paidAmount = "paid_amount"
        case invBalanceAmount = "inv_balance_amount"
        case cusTotalBalance = "cus_total_balance"
        case entryType = "entry_type"
        case addedBy = "added_by"
    }
}

enum AddedBy: String, Codable {
    case waseem = "waseem"
}

enum Details: String, Codable {
    case adjustmentEntry25178 = "ADJUSTMENT ENTRY.(25178)"
    case cashReceivedByHand = "CASH RECEIVED BY HAND."
    case cashReceivedByManzor = "CASH RECEIVED BY MANZOR."
    case cashReceivedBySaidKareem = "CASH RECEIVED BY SAID KAREEM."
    case cashRecivedBySaeedUllah = "CASH RECIVED BY SAEED ULLAH"
    case sales = "sales"
}
