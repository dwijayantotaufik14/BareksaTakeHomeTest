//
//  ViewController.swift
//  BareksaTakeHomeTest
//
//  Created by Brilliann Nuswantara Bhagawanta on 26/01/22.
//

import UIKit

class ViewController: UIViewController {
    let apiWorker = APIWorker()
    
    var detailData = [DetailData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiWorker.getMethodRequest(URLConstant.detailApi) { data in
            self.detailData = data!.data!
            print("DETAIL DATA : \(data?.data)")
        }
    }

    

}

