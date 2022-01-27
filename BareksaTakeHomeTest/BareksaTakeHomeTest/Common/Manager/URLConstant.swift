//
//  URLConstant.swift
//  BareksaTakeHomeTest
//
//  Created by Brilliann Nuswantara Bhagawanta on 27/01/22.
//

import Foundation

struct URLConstant {
    static let baseUrl: String = "https://ae1cdb19-2532-46fa-9b8f-cce01702bb1e.mock.pstmn.io/takehometest/apps/compare"
    
    static let detailApi: String = baseUrl + "/detail?productCodes=KI002MMCDANCAS00&productCodes=TP002EQCEQTCRS00&productCodes=NI002EQCDANSIE00"
    static let chartApi: String = baseUrl + "/chart?productCodes=KI002MMCDANCAS00&productCodes=TP002EQCEQTCRS00&productCodes=NI002EQCDANSIE00"
}
