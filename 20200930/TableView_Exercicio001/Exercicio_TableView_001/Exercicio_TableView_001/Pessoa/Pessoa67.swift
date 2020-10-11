import UIKit

class Pessoa67ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public static func getViewController() -> Pessoa67ViewController? {
        if let viewController = UIStoryboard(name: "Pessoa67", bundle: nil).instantiateInitialViewController()
                as? Pessoa67ViewController {
            return viewController
        }
        return nil
    }

}

