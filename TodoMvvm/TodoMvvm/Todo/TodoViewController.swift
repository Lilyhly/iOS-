//
//  TodoViewController.swift
//  TodoMvvm
//
//  Created by 洪立妍 on 1/29/24.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var todoData:[[Todo]] =  Todo.getTestData()
    
    
    var tableView: UITableView!
    let cellIdentifier = "TodoCell"
    var todoList: [Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 創建 UITableView 實例
        tableView = UITableView(frame: view.bounds, style: .plain)
        
        // 註冊 UITableViewCell 類型，如果您有自定義的 UITableViewCell，則需要進行註冊
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
      
        
        // 將 UITableView 添加到視圖層次結構中
        view.addSubview(tableView)
        
        
        
    }
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 返回表格中的行數
        return todoData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 返回要顯示在特定行的 UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        let todoItem = todoData[indexPath.section][indexPath.row]
        cell.textLabel?.text = todoItem.text
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return todoData.count
       }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
           return Category.allCases[section].text // 返回 section 的標題
       }
     //UITableViewDelegate 方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 點擊特定行時的處理邏輯
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
}
