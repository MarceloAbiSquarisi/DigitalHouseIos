import UIKit

class Pesso3ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public static func getViewController() -> Pesso3ViewController? {
        if let viewController = UIStoryboard(name: "Pesso3", bundle: nil).instantiateInitialViewController()
                as? Pesso3ViewController {
            return viewController
        }
        return nil
    }

}

