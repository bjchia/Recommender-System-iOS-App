//
//  ViewController.swift
//  Carousel
//
//  Created by Benjamin Chia on 11/8/20.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
    
}

class ViewController: UIViewController, CardSliderDataSource {

    var data = [Item]()
    
    @IBOutlet var myButton: UIButton!
    
    @IBOutlet weak var Movies: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(image: UIImage(named: "american")!, title: "American Food", subtitle: "test"))
        
        data.append(Item(image: UIImage(named: "asian_food")!, title: "Asian Food"))
        
        data.append(Item(image: UIImage(named: "mexican")!, title: "Mexican Food"))
        // Do any additional setup after loading the view.
        
        // Movies.layer.cornerRadius = 25.0
    }
    
     @IBAction func didTapButton() {
       // Card SLide UI
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Restaurants"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    


}

