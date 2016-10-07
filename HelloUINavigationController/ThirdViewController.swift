//
//  ThirdViewController.swift
//  HelloUINavigationController
//
//  Created by 洪德晟 on 2016/10/3.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func goBack(_ sender: UIButton) {
        //左到右回去上個畫面, 回到根目錄popRoot
        let _ = self.navigationController?.popViewController(animated: true)
        //把畫面降下去
//        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
