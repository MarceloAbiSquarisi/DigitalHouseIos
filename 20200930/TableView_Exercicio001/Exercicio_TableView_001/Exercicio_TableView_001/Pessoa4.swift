import UIKit

class Pessoa4ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public static func getViewController() -> Pessoa4ViewController? {
        if let viewController = UIStoryboard(name: "Pessoa4", bundle: nil).instantiateInitialViewController()
                as? Pessoa4ViewController {
            return viewController

        }

        return nil

    }



}






















