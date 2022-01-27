//
//  APIWorker.swift
//  BareksaTakeHomeTest
//
//  Created by Brilliann Nuswantara Bhagawanta on 27/01/22.
//

import Foundation

protocol ApiResult {
    var data : Data? {get}
    var error: Error? {get}
    var headers: [AnyHashable : Any]? {get}
}

struct Result: ApiResult {
    public var data: Data?
    public var error: Error?
    public var headers: [AnyHashable : Any]?
    public var response: HTTPURLResponse?
}

typealias apiCallback = (Result) -> Void

class APIWorker {
    init() {}
    
    func getMethodRequest(_ urlEndPoint: String, completionHandler: @escaping (DetailModel?) -> ()) {
        guard let url = URL(string: urlEndPoint) else {
            print("Error: Cannot Create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // make the request
        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            // check for any errors
            guard error == nil else {
                print("error calling GET on /todos/1")
                print(error!)
                return
            }
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            // parse the result as JSON, since that's what the API provides
            do {
                guard let jsonObject = try JSONSerialization.jsonObject(with: responseData) as? [String: Any] else {
                    print("Error: Cannot convert data to JSON object")
                    return
                }
                // 4--- parse the response received from server...
                guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                    print("Error: Cannot convert JSON object to Pretty JSON data")
                    return
                }
                
                let detailData = try? JSONDecoder().decode(DetailModel.self, from: prettyJsonData)
                completionHandler(detailData)
            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        task.resume()
    }
}

/**guard let todo = try JSONSerialization.jsonObject(with: responseData, options: [])
 as? [String: Any] else {
 print("error trying to convert data to JSON")
 return
 }
 // now we have the todo
 // let's just print it to prove we can access it
 print("The todo is: " + todo.description)
 
 // the todo object is a dictionary
 // so we just access the title using the "title" key
 // so check for a title and print it if we have one
 guard let todoTitle = todo["title"] as? String else {
 print("Could not get todo title from JSON")
 return
 }
 print("The title is: " + todoTitle)*/
