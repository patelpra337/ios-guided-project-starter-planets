//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by patelpra on 10/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit


class PlanetsCollectionViewController: UICollectionViewController {

    let planetController = PlanetController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
      
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else {
            fatalError("The cell was not found")
        }
    
        // Configure the cell
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        return cell
    }

    // MARK: UICollectionViewDelegate
        
}

