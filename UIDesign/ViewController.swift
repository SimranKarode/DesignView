//
//  ViewController.swift
//  UIDesign
//
//  Created by Simran on 08/03/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var progressView: UIView!
    
    @IBOutlet weak var premiumView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var FirstView: UIView!
    
    
    var alarmArray: [String] = ["images 1", "images 2", "images 3"]
    var titleArray: [String] = ["Steps to recharge", "Training", "Workout"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        progressView.layer.borderWidth = 5.0
        progressView.layer.borderColor = UIColor.systemCyan.cgColor
        progressView.layer.cornerRadius = 10.0
        imageView.layer.borderWidth = 1.0
        imageView.layer.borderColor = UIColor.systemCyan.cgColor
        imageView.layer.cornerRadius = 10.0
        premiumView.layer.borderWidth = 1.0
        premiumView.layer.borderColor = UIColor.white.cgColor
        premiumView.layer.cornerRadius = 10.0
        
//        FirstView.layer.borderWidth = 1.0
//        FirstView.layer.borderColor = UIColor.systemCyan.cgColor
//        FirstView.layer.cornerRadius = 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectRowAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(alarmArray.count)
        return alarmArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.borderWidth = 1.0

        cell.contentView.layer.borderColor = UIColor.white.cgColor
        cell.contentView.layer.masksToBounds = true

        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
//        cell.imageView.image = UIImage(named: alarmArray[indexPath.row])
//        cell.imageView.layer.cornerRadius = 10.0
        cell.isHidden = false
        cell.imageView.image = UIImage(named: alarmArray[indexPath.row])
        cell.imageView.layer.cornerRadius = 10.0
        return cell
    }
    
    
    
   
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellRow", for: indexPath) as! ReminderCollectionView
        
        cell.picture.image = UIImage(named: alarmArray[indexPath.row])
        
        return cell
    }
    
    
}
