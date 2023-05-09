//
//  Sport.swift
//  OddsAPI
//
//  Created by Iaroslav Beldin on 07.05.2023.
//

struct Sport: Decodable {
    let key: String
    let group: String
    let title: String
    let description: String
    let active: Bool
    let has_outrights: Bool
}
