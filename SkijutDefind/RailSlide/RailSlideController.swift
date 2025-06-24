//
//  RailSlideController.swift
//  SkijutDefind
//
//  Created by mumu on 2025/6/24.
//

import UIKit

class RailSlideController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var sideBevel = Array<Dictionary<String,Any>>()
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sideBevel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let RailSlideCell = tableView.dequeueReusableCell(withIdentifier: "RailSlideCell", for: indexPath) as! RailSlideCell
        return RailSlideCell
    }
    
    @IBOutlet weak var userceneter: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        persistentSlab.backgroundColor = .clear
        persistentSlab.showsVerticalScrollIndicator = false
        persistentSlab.delegate = self
        persistentSlab.dataSource = self
        persistentSlab.register(UINib.init(nibName: "RailSlideCell", bundle: nil), forCellReuseIdentifier: "RailSlideCell")
        persistentSlab.rowHeight = 120
        persistentSlab.separatorStyle = .singleLine
    }
    

    @IBOutlet weak var persistentSlab: UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        flexPattern()
    }
    
    func flexPattern()  {
        
    }
}
