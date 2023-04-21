//
//  RequestList.swift
//  DesesperateList
//
//  Created by Jeiel Lima on 21/04/23.
//

import Foundation


func fetchList() {
    
    let url = URL(string: "http://jlima-mac.local:3000/tasks")
    guard let requestUrl = url else { fatalError() }
    var request = URLRequest(url: requestUrl)
    request.httpMethod = "GET"
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        if let error = error {
            print("Error took place \(error)")
            return
        }
        
        if let response = response as? HTTPURLResponse {
            print("Response HTTP Status code: \(response.statusCode)")
        }
        
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print("Response data string: \(dataString)")
        }
    }
    task.resume()
}
