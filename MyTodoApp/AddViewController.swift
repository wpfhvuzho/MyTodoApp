//
//  AddViewController.swift
//  MyTodoApp
//
//  Created by 高橋　龍 on 2021/09/05.
//

import UIKit

var TodoKobetsunonakami = [String]()


class AddViewController: UIViewController {
    
    //weakとは？
    @IBOutlet weak var TodoTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TodoAddButton() {
//        TodoTextFieldの中身をTodoKobetsunonakami配列に追加する
        TodoKobetsunonakami.append(TodoTextField.text!)
        
        TodoTextField.text = ""
        
        //UserDefaultsいまいちわからん
        //データベースを作るほどではないデータを、簡単に保存しておける箱のこと
        UserDefaults.standard.set(TodoKobetsunonakami, forKey: "TodoList")
        
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
