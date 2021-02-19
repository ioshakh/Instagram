//
//  HomeViewController.swift
//  Instagram
//
//  Created by shahzod on 2/18/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class HomeViewController: ParentViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var items : Array<Post> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        
    }
    
    
    //Mark : - Methods
    
    func initView() {
        setNavigationBar()
        tableView.delegate = self
        tableView.dataSource = self
        
        items.append(Post(fullname: "shahzod", user_img: "person_img", post_img: "3x" , post_img2 : "person2_post"))
        items.append(Post(fullname: "sabina", user_img: "person2_img", post_img: "person2_post" , post_img2 : "person_post"))
        items.append(Post(fullname: "Sohib", user_img: "person3", post_img: "person_post" , post_img2 : "person2_post"))
    }
    
    
    func setNavigationBar() {
        let camera = UIImage(named: "ic_camera")
        let near = UIImage(named: "ic_near")
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera , style:.plain , target: self , action: #selector(leftTapped))
        
         navigationItem.rightBarButtonItem = UIBarButtonItem(image: near , style:.plain , target: self , action: #selector(rightTapped))
        title = "Instagram"
    }
    
    
    
    
    
    //Mark: - Action
    
    @objc func leftTapped() {
        
    }
    
    @objc func rightTapped() {
        
    }
    
    //Mark : - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("HomeTableViewCell", owner:self, options: nil)?.first as! HomeTableViewCell
        cell.FullNameLabel.text = item.fullname
        
        cell.profileView.image = UIImage(named: item.user_img!)
        
        cell.postImageView.image = UIImage(named: item.post_img!)
        
        cell.post2ImageView.image = UIImage(named: item.post_img2!)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 550
    }
    

}
