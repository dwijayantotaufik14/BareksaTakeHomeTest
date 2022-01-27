//
//  DetailModel.swift
//  BareksaTakeHomeTest
//
//  Created by Brilliann Nuswantara Bhagawanta on 27/01/22.
//

import Foundation

struct DetailModel: Codable {
    var code: Int?
    var message: String?
    var error: String?
    var total_data: Int?
    var data: [DetailData]?
    
    init() {}
}

struct DetailData: Codable {
    var code: String?
    var name: String?
    var details: Details?
    
    init() {}
}

struct Details: Codable {
    var category: String?
    var category_id: Decimal?
    var currency: String?
    var custody: String?
    var inception_date: String?
    var im_avatar: String?
    var im_name: String?
    var min_balance: Decimal?
    var min_redemption: Decimal?
    var min_subscription: Decimal?
    var nav: Decimal?
    var return_cur_year: Decimal?
    var return_five_year: Decimal?
    var return_four_year: Decimal?
    var return_inception_growth: Decimal?
    var return_one_day: Decimal?
    var return_one_month: Decimal?
    var return_one_week: Decimal?
    var return_one_year: Decimal?
    var return_six_month: Decimal?
    var return_three_month: Decimal?
    var return_three_year: Decimal?
    var return_two_year: Decimal?
    var total_unit: Decimal?
    var type: String?
    var type_id: Decimal?
    
    init() {}
}
