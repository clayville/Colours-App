//
//  ColoursTableVC.swift
//  Colours App
//
//  Created by Clayville on 30/9/2022.
//

import UIKit

class ColoursTableVC: UIViewController {
    
    var colour:[UIColor] = []
    
    enum Cells {
        
        static let colourCell = "cell"
    }
    
    enum Segues{
        
        static let toColourDetailVC = "gotoDetailsVC"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColour()
    }
    
    
    // MARK:- FUNCTIONS
    
    
    // add a random colour
    
    func addRandomColour(){
        
        for _ in 0..<50{
            colour.append(.random())
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as! ColourDetailVC
        destVC.colour = sender as? UIColor
    }
}

extension ColoursTableVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colour.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else {return UITableViewCell()}
        
        let cellColour = colour[indexPath.row]
        cell.backgroundColor = cellColour
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let colour = colour[indexPath.row]
        performSegue(withIdentifier: Segues.toColourDetailVC, sender: colour)
        
    }
    
}
