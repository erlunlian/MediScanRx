//
//  InfoViewController.swift
//  MediScan
//
//  Created by Tony Wu on 5/18/18.
//  Copyright © 2018 Erlun Lian. All rights reserved.
//

import UIKit


class InfoViewController: UIViewController {

    @IBOutlet weak var drug_name: UILabel!
    // @IBOutlet weak var main_usage: UILabel!
    @IBOutlet weak var side_effects: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if is_filtered == false {
            drug_name.text = drug_list.drugs[my_index]
            // main_usage.text = drug_list.get_main_usages(name: drug_list.drugs[my_index].uppercased())
            side_effects.text = drug_list.get_side_effects(name: drug_list.drugs[my_index].uppercased())
        }
        else {
            drug_name.text = filtered_drugs[my_index]
            // main_usage.text = drug_list.get_main_usages(name: filtered_drugs[my_index].uppercased())
            side_effects.text = drug_list.get_side_effects(name: filtered_drugs[my_index].uppercased())
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add_favorite(_ sender: UIButton) {
        let x: String = drug_name.text!

        if UserDefaults.standard.object(forKey: "SavedStringArray") != nil {
            var my_array = UserDefaults.standard.stringArray(forKey: "SavedStringArray") ?? [String]()
            // Also should check if we already favorited the drug
            if !(my_array.contains(x)) {
                my_array.append(x)
                UserDefaults.standard.set(my_array, forKey: "SavedStringArray")
                array.append(x)
            }
        }
        else {
            var my_array = [String]()
            my_array.append(x)
            UserDefaults.standard.set(my_array, forKey: "SavedStringArray")
            array.append(x)
        }
    }
}
