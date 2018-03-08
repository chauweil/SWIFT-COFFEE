//
//  ViewController.swift
//  iota
//
//  Created by jeff chau on 02/03/2018.
//  Copyright © 2018 jeff chau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var texto : String = ""
    @IBOutlet weak var rep: UILabel!

    @IBOutlet weak var response: UILabel!
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var overlay : UIView? // This should be a class variable

    
    @IBAction func orderExpresso(_ sender: Any) {
        

        fetchSendData()
        

    }
    
    func fetchSendData() {
        

        let url = URL(string: "http://54.36.61.13:3000/api/coffee")
        var request = URLRequest(url: url!)
        
        request.httpMethod = "POST"
        // let postString = "?id=1&name=Jeff"
        //  request.httpBody = postString.data(using: .utf8)
        print(request.httpBody)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil
            {print("error")}
            else{
                if let content = data {
                    do {
                        let myjson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject!
                        let serie = myjson as! NSDictionary
                        print(serie)
                        
                        self.texto=serie.value(forKey:"Message")! as! String
                    print(serie.value(forKey:"Message")!)
                        
                        
                        DispatchQueue.main.async() {
                            self.activityIndicator.center = self.view.center
                            self.activityIndicator.hidesWhenStopped = true
                            self.activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
                            self.view.addSubview(self.activityIndicator)
                            
                            self.activityIndicator.startAnimating()
                            UIApplication.shared.beginIgnoringInteractionEvents()
                            
                            self.response.text=self.texto
                            self.activityIndicator.stopAnimating()
                            UIApplication.shared.endIgnoringInteractionEvents()
                            
                        }

                    }
                    catch{print("bug")}
                    
                }
                
            }}
        task.resume()
    print(self.response.text)


        
    }
    func fetchSendData2() {
        let url = URL(string: "http://54.36.61.13:3000/api/coffee")
        var request = URLRequest(url: url!)
        
        request.httpMethod = "POST"
        // let postString = "?id=1&name=Jeff"
        //  request.httpBody = postString.data(using: .utf8)
        print(request.httpBody)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil
            {print("error")}
            else{
                if let content = data {
                    do {
                        let myjson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject!
                        let serie = myjson as! NSDictionary
                        print(serie)
                        
                        self.texto=serie.value(forKey:"Message")! as! String
                        print(serie.value(forKey:"Message")!)
                    }
                    catch{print("bug")}
                    
                }
                
            }}
        task.resume()
        self.response.text=self.texto
        print(self.response.text)
        
        
        
    }
 
    func fetchSendData3() {
        let url = URL(string: "http://54.36.61.13:3000/api/coffee")
        var request = URLRequest(url: url!)
        
        request.httpMethod = "POST"
        // let postString = "?id=1&name=Jeff"
        //  request.httpBody = postString.data(using: .utf8)
        print(request.httpBody)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil
            {print("error")}
            else{
                if let content = data {
                    do {
                        let myjson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject!
                        let serie = myjson as! NSDictionary
                        print(serie)
                        
                        self.texto=serie.value(forKey:"Message")! as! String
                        print(serie.value(forKey:"Message")!)
                    }
                    catch{print("bug")}
                    
                }
                
            }}
        task.resume()
        self.response.text=self.texto
        print(self.response.text)
        
        
        
    }
    
}

