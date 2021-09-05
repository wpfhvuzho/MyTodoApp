//
//  ViewController.swift
//  MyTodoApp
//
//  Created by 高橋　龍 on 2021/09/05.
//

import UIKit

//参考にした記事
//https://qiita.com/pe-ta/items/8f474358d1dd789557f3
class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    //Todoの配列にある配列の個数を返す関数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoKobetsunonakami.count
    }
    
    //_ってどんな意味があるの？
    //何で同じ名前の関数があるの？
    //呼び出ししなくてもこの関数って使えるの？どうして？
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        
        //このtextLabelとは何ぞや？
        //IndexPathの使い方ってどんなの？
        TodoCell.textLabel!.text = TodoKobetsunonakami[indexPath.row]
        
        return TodoCell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //UDに何かしらのデータがあった場合、TodoListにデータを表示させる
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            //もしかして、UDの中身を取り出すときのメソッドはobjectなのか？
            //このas! [String]ってどういう意味？
            TodoKobetsunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }

    

}

