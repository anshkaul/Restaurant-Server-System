//
//  ViewController.swift
//  Restaurant Server System
//
//  Created by Ansh Kaul on 3/2/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var order = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = 
    }
    

    

    @IBOutlet weak var orderNames: UILabel!
    @IBOutlet weak var orderPrices: UILabel!
    @IBOutlet weak var orderNamesTable: UITableView!
    @IBOutlet weak var orderPricesTable: UITableView!
    
    var chosen_items:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearAll()
        orderNamesTable.delegate = self
        orderNamesTable.dataSource = self
        orderPricesTable.delegate = self
        orderPricesTable.dataSource = self
        
        
        
    }
    func clearAll(){
        chosen_items = ""
        orderNames.text = ""
        orderPrices.text = ""
        
        
    }

    @IBAction func pizza(_ sender: Any) {
        addToNames(name: "Pizza")
        print(chosen_items)
    }
    @IBAction func burger(_ sender: Any) {
        addToNames(name: "Burger")
    }
    @IBAction func pasta(_ sender: Any) {
        addToNames(name: "Pasta")
    }
    @IBAction func fries(_ sender: Any) {
        addToNames(name: "Fries")
    }
    @IBAction func nuggets(_ sender: Any) {
        addToNames(name: "Nuggets")
    }
    @IBAction func salad(_ sender: Any) {
        addToNames(name: "Salad")
    }
    @IBAction func icecream(_ sender: Any) {
        addToNames(name: "Ice Cream")
    }
    @IBAction func cake(_ sender: Any) {
        addToNames(name: "Cake")
    }
    @IBAction func churros(_ sender: Any) {
        addToNames(name: "Churros")
    }
    @IBAction func water(_ sender: Any) {
        addToNames(name: "Water")
    }
    @IBAction func soda(_ sender: Any) {
        addToNames(name: "Soda")
    }
    @IBAction func champagne(_ sender: Any) {
        addToNames(name: "Champagne")
    }
    
    func addToNames(name: String){
        chosen_items = chosen_items + name
        orderNames.text = chosen_items
        order.append(name)
    }
    
    func addToPrice(value: String){
        
    }
    
    @IBAction func reset(_ sender: Any) {
        clearAll()
    }
    
    
}

