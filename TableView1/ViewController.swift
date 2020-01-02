//
//  ViewController.swift
//  TableView1
//
//  Created by R Shantha Kumar on 12/23/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
       var tollywoodnames = [String]()
       var tollywoodAges = [String]()
       var tollywoodIndustrys = [String]()
    
    
        var bollywoodnames = [String]()
        var bollywoodages = [String]()
        var bollywoodindustrys = [String]()
    
    
    
        var hollywoodnames = [String]()
        var hollywoodages = [String]()
        var hollywoodindustrys = [String]()

    var tableView:UITableView!

    var desinfgation2 = [String]()
    

    var tollywoodImages = [UIImage]()
    var bollywoodImages = [UIImage]()
    var hollywoodImages = [UIImage]()
   
    var imageVie:UIImageView!
    
    var text4:String?
  var path2 = [String]()
    
    
    
    
    
 
override func viewDidLoad() {
    
                 super.viewDidLoad()
       
                 tableViewMerhod()
        
        
        // Do any additional setup after loading the view.
    }

//     regestering nibs
    
func tableViewMerhod(){
   
        
    tableView = UITableView(frame: view.frame, style: UITableView.Style.grouped)
        
    var cellxib = UINib(nibName: "CustomTableViewCell", bundle: nil)
    
    tableView.register(cellxib, forCellReuseIdentifier: "abc")
    
    var cellxib1 = UINib(nibName: "CutomTableViewCell2", bundle: nil)
    
    tableView.register(cellxib1, forCellReuseIdentifier: "abcd")
    
    var cellxib3 = UINib(nibName: "CustomTableViewCell3", bundle: nil)
    
    tableView.register(cellxib3, forCellReuseIdentifier: "abcde")
    
       
          view.addSubview(tableView)
    
           tableView.delegate = self
           tableView.dataSource = self
    
    
    }
 
    
//func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,       forRowAt indexPath: IndexPath) {
//            if editingStyle == .delete {
//           print("Deleted")
//
//           self.items.remove(at: indexPath.row)
//
//           self.tableView.deleteRows(at: [indexPath], with: .automatic)
//
//
//           }
//         DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:name1[indexPath.row])
//
//        tableView.reloadData()
//        }
    
    
// no of section declared
    
    
    @IBAction func editACtion(_ sender: Any) {
        
        tableView.isEditing = true
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,       forRowAt indexPath: IndexPath) {
                if editingStyle ==
                    
                    .delete {
               print("Deleted")
                    
                     if(path2[0] == "tollywood"){

                    self.tollywoodnames.remove(at: indexPath.row)
                    self.tollywoodAges.remove(at: indexPath.row)
                    self.tollywoodIndustrys.remove(at: indexPath.row)
                    self.tollywoodImages.remove(at: indexPath.row)
                    }
                    
                     if(path2[0] == "bollywood"){
                    self.bollywoodnames.remove(at: indexPath.row)
                    self.bollywoodages.remove(at: indexPath.row)
                    self.bollywoodindustrys.remove(at: indexPath.row)
                        
                    self.bollywoodImages.remove(at: indexPath.row)
                        
                    }
                    if(path2[0] == "hollywood"){
                    
                    self.tollywoodIndustrys.remove(at: indexPath.row)
                    self.bollywoodindustrys.remove(at: indexPath.row)
                    self.hollywoodindustrys.remove(at: indexPath.row)
                    
                    self.hollywoodImages.remove(at: indexPath.row)
                        
                    }
                    
           if(path2[0] == "tollywood"){
                    
            DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:tollywoodnames[indexPath.row])
             DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"age" , value:tollywoodAges[indexPath.row])
             DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"industry" , value:tollywoodIndustrys[indexPath.row])
//            DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"imageData" , value:tollywoodImages[indexPath.row])
          }
            if(path2[0] == "bollywood"){
                            
                    DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:bollywoodindustrys[indexPath.row])
                            }
            if(path2[0] == "hollywood"){
                            
                    DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:hollywoodindustrys[indexPath.row])
                            }
               self.tableView.deleteRows(at: [indexPath], with: .automatic)


               
//        DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:name1[indexPath.row])
                    
        }
        if editingStyle == .insert{
            
            
            
              let target = storyboard?.instantiateViewController(identifier: "abcd") as! TableViewController
                  
                  navigationController?.pushViewController(target, animated: true)
            
            
            
    //
    //        self.allItems.insert(allItems[indexPath.row], at: indexPath.row)
    //
    //        var ip1 = IndexPath(row: indexPath.row, section:  0)
    //
    //        tableView.insertRows(at: [ip1], with: UITableView.RowAnimation.middle)
        }
            tableView.reloadData()
        }
    
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
          
          if (indexPath.row % 2 == 0){
              
              return UITableViewCell.EditingStyle.insert
          }
          else{
            
          return UITableViewCell.EditingStyle.delete
              
          }
             

      }
    
func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
//  section wise titles declared
    
func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
        
           return "tollyood"
            }
    
        else if(section == 1){
            
            
            
          return "bollywood"
            
        }
        
            
            
            return "hollywood"
            
       
    }
    
//  no of rows as per count
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    if(section == 0 ){
        
        return tollywoodnames.count
    }
    else if(section == 1){
        return bollywoodnames.count
    }
    
    return hollywoodnames.count
         
         }
    
    
//  displaying data as per section
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    
    
    
//    var cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath)
   
    
    
    
//    cell.translatesAutoresizingMaskIntoConstraints = true
      
//
//      cell.imageView?.heightAnchor.constraint(equalToConstant: 100).isActive = true
//      cell.imageView?.widthAnchor.constraint(equalToConstant: 100).isActive = true
//let   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCelllet   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCell
     
    
    if(indexPath.section == 0){
        
    let   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCell
        
        cell.nameLAbel?.text = "Actor Name : \(tollywoodnames[indexPath.row])"
        cell.ageLabel?.text = "Actor Age : \(tollywoodAges[indexPath.row])"
        cell.industryLabel?.text = "Actor Industry : \(tollywoodIndustrys[indexPath.row])"
        cell.tollyWoodImageView?.image = tollywoodImages[indexPath.row]
       cell.tollyWoodImageView?.layer.cornerRadius = cell.tollyWoodImageView!.frame.size.width/2
        cell.tollyWoodImageView?.clipsToBounds = true
              
               cell.textLabel!.numberOfLines = 0
               
               DBManager.shared.indexPath = indexPath.row
                 return cell
        
    }
   else if(indexPath.section == 1){
        
       let   cell = tableView.dequeueReusableCell(withIdentifier: "abcd", for: indexPath) as! CutomTableViewCell2
         cell.nameLAbel2?.text = "Actor Name : \(bollywoodnames[indexPath.row])"
         cell.ageLabel2?.text = "Actor Age : \(bollywoodages[indexPath.row])"
         cell.industryLabel2?.text = "Actor Industry : \(bollywoodindustrys[indexPath.row])"
        
        print("$$$$$$$$$$$$$$$$$",indexPath.row)
        
         cell.bollyWoodImageVIew?.image = bollywoodImages[indexPath.row]
        
        
        
             //cell.heightAnchor.constraint(equalToConstant: 391).isActive = true
             //cell.widthAnchor.constraint(equalToConstant: 419).isActive = true
         
         cell.bollyWoodImageVIew?.layer.cornerRadius = cell.bollyWoodImageVIew!.frame.size.width/2
            cell.bollyWoodImageVIew?.clipsToBounds = true
               
                cell.textLabel!.numberOfLines = 0
                
                DBManager.shared.indexPath = indexPath.row
        return cell
   
    }
    
             
    let   cell = tableView.dequeueReusableCell(withIdentifier: "abcde", for: indexPath) as! CustomTableViewCell3
    
     cell.nameLAbel3?.text = "Actor Name : \(hollywoodnames[indexPath.row])"
     cell.ageLabel3?.text = "Actor Age : \(hollywoodages[indexPath.row])"
     cell.industryLabel3?.text = "Actor Industry : \(hollywoodindustrys[indexPath.row])"
     cell.hollyWoodImageView?.image = hollywoodImages[indexPath.row]
    
         //cell.heightAnchor.constraint(equalToConstant: 391).isActive = true
         //cell.widthAnchor.constraint(equalToConstant: 419).isActive = true
     
        cell.hollyWoodImageView?.layer.cornerRadius = cell.hollyWoodImageView!.frame.size.width/2
        cell.hollyWoodImageView?.clipsToBounds = true
           
            cell.textLabel!.numberOfLines = 0
            
            DBManager.shared.indexPath = indexPath.row

            return cell

        }
    

//    height of the cell
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
 
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let target = storyboard?.instantiateViewController(identifier: "abcde")
    
    navigationController?.pushViewController(target!, animated: true)
    
//    DBManager.shared.items3.append(items[indexPath.row])
   
        
        
        
    }
    
    
@IBAction func addContact(_ sender: Any) {
        
        
   
        
        let target = storyboard?.instantiateViewController(identifier: "abcd") as! TableViewController
        
        navigationController?.pushViewController(target, animated: true)
        
        
        
    }
    
    
//fetching data
    

    override func viewWillAppear(_ animated: Bool) {
       

        
        let data = DBManager.shared.fetchDAta(entityName: "Contacts")
     
//  fetching
                desinfgation2 = [String]()
               
        
                     tollywoodnames = [String]()
                      tollywoodAges = [String]()
                      tollywoodIndustrys = [String]()
                  
                  
                       bollywoodnames = [String]()
                       bollywoodages = [String]()
                       bollywoodindustrys = [String]()
                  
                  path2 = [String]()
                  
                       hollywoodnames = [String]()
                       hollywoodages = [String]()
                       hollywoodindustrys = [String]()
        
        tollywoodImages = [UIImage]()
         bollywoodImages = [UIImage]()
         hollywoodImages = [UIImage]()
        
               
                var text:String!
       
                       
                
                for (i,x) in data.enumerated()
                {
                    
                  let path =   x.value(forKey: "designation") as? String ?? "empty"
                    path2.append(path)
                    
                    desinfgation2.append(path)
                    
                    let defaultImage = UIImage(named: "defaultImage")
                    
                    let imageData = (defaultImage!.pngData()! as NSData)
                    
                    let imaged = x.value(forKey: "imageData") as? NSData ??  imageData
                    
                    
                    
                    let uiimage = UIImage(data:(imaged as? Data)!)

                    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",imaged)
                    
                    if let c = uiimage
                    {
                    if(path == "tollywood"){
                        tollywoodImages.append(c)
                                        
                    }
                    if(path == "bollywood"){
                        bollywoodImages.append(c)
                    }
                    if(path == "hollywood"){
                        hollywoodImages.append(c)
                        
                    }
                    }
              
                    
                    let name = x.value(forKey: "name") as? String ?? "empty"
                  
                    let aged = x.value(forKey: "age") as? String ?? "empty"
                 
                    var industry = x.value(forKey: "industry") as? String ?? "empty"
                   
                    
                    
                    
                 if(path == "tollywood"){
                
                    tollywoodnames.append(name)
                    tollywoodAges.append(aged)
                    tollywoodIndustrys.append(industry)
                   
                
                     }
                    if(path == "bollywood"){
                          
                        
                        bollywoodnames.append(name)
                        bollywoodages.append(aged)
                        bollywoodindustrys.append(industry)
                        
                           }
                    if(path == "hollywood"){
                          
                        
                        hollywoodnames.append(name)
                        hollywoodages.append(aged)
                        hollywoodindustrys.append(industry)
                        
                                   
                           }
                    
        }
                   tableView.reloadData()
        }
    
    
     
    
    
    

    
    
    
    
    
    
    
    
    

}

