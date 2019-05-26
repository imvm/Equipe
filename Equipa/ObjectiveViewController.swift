//
//  ObjectiveViewController.swift
//  Equipa
//
//  Created by Ian Manor on 26/05/19.
//  Copyright © 2019 Ian Manor. All rights reserved.
//

import UIKit
import PieCharts

class ObjectiveViewController: UIViewController {
    @IBOutlet weak var pieChart: PieChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Objetivos"
        
        pieChart.models = [
            PieSliceModel(value: 2, color: UIColor.red
            ),
            PieSliceModel(value: 3, color: UIColor.green
            )
        ]
    }
    
    @IBAction func goToStore(_ sender: Any) {
        let myViewController = StoreCollectionViewController(nibName: "StoreCollectionViewController", bundle: nil)
        self.navigationController?.pushViewController(myViewController, animated: true)
    }
    
    func setCircle(percentage: Double) {
        
    }
}
