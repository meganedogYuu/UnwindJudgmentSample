import UIKit

class ViewController: UIViewController {
    
    // 遷移先に渡す変数
    let a = "ラーメン"
    let b = "うどん"
    
    /// Unwind Segueで戻ってきたVcの名前を表示するためのLabel
    @IBOutlet weak var beforeVcNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// Segueで遷移する際のメソッド
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "goSecond" { //SecondViewControllerに遷移する場合
            // SecondViewControllerをインスタンス化
            let secondVc = segue.destinationViewController as! SecondViewController
            // 値を渡す
            secondVc.a = self.a
            
        }else if segue.identifier == "goThird" { //ThirdViewControllerに遷移する場合
            // ThirdViewControllerをインスタンス化
            let thirdVc = segue.destinationViewController as! ThirdViewController
            // 値を渡す
            thirdVc.b = self.b
            
        }else {
            // どちらでもない遷移
        }
    }
    

    /// この画面に戻ってくるようにするUnwind Segue
    @IBAction func returnToTop(segue: UIStoryboardSegue) {
    
        if segue.identifier == "backSecond" { //SecondViewControllerから戻ってきた場合
            // Labelに表示
            beforeVcNameLabel.text = "SecondVcから戻ってきました"
            
        }else if segue.identifier == "backThird" { //ThirdViewControllerから戻ってきた場合
            // Labelに表示
            beforeVcNameLabel.text = "ThirdVcから戻ってきました"
            
        }else {
            // どちらでもない遷移
        }
    }
}