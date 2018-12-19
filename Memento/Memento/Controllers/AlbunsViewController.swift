//
//  AlbunsViewController.swift
//  Memento
//
//  Created by Guimbo on 13/12/18.
//  Copyright © 2018 Guimbo. All rights reserved.
//

import UIKit

class AlbunsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    let listOfAlbuns:[Album] = CoreDataManager.shared.fetchAllAlbuns()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "CellCustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell")
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfAlbuns.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CellCustomTableViewCell
        cell.albumTitle.text = listOfAlbuns[indexPath.row].title
        cell.albumDate.text = listOfAlbuns[indexPath.row].date
        cell.albumBG.image = listOfAlbuns[indexPath.row].background
        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
