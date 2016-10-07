//
//  ViewController.swift
//  HelloUINavigationController
//
//  Created by 洪德晟 on 2016/10/3.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func gotoView2(_ sender: UIButton) {
        performSegue(withIdentifier: "gotoview2", sender: nil)
    }

    @IBAction func gotoWhite(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "gotowhite", sender: nil)
    }
    
    @IBAction func backToMain(_ segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


class SecondViewController: UIViewController {
    
    @IBAction func gotoView3(_ sender: UIBarButtonItem) {
        
        //找到 Main.storyboard
        let myStorybard = UIStoryboard(name: "Main", bundle: nil)
        
        //用 id 生出紅色的 ViewController
        let redViewController = myStorybard.instantiateViewController(withIdentifier: "redview")
        
        // (上兩行的簡寫)
//        let redViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "redview")
        
        //從下面上來
//        present(redViewController, animated: true, completion: nil)
        
        //從右邊到左邊
        navigationController?.pushViewController(redViewController, animated: true)
        
    }
    
    

    @IBAction func gotoNewView(_ sender: UIButton) {
        
        let greenViewController = UIStoryboard(name: "SecondStoryboard", bundle: nil).instantiateViewController(withIdentifier: "greenview")
        
        //        navigationController?.pushViewController(greenViewController, animated: true)
        
        present(greenViewController, animated: true, completion: nil)
        
    }
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
