//
//  ViewController.swift
//  OddsAPI
//
//  Created by Iaroslav Beldin on 07.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let url = URL(string: "https://api.the-odds-api.com/v4/sports/?apiKey=b6ba3d3550691c3c3057d910b7d9bde1")!

    override func viewDidLoad() {
        super.viewDidLoad()
        getSports()
    }
}


// MARK: - Networking
extension ViewController {
    private func getSports() {
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let sports = try decoder.decode([Sport].self, from: data)
                
                for sport in sports {
                    print(sport)
                }
            } catch {
                print("Decoding error")
            }
        }.resume()
    }
}
