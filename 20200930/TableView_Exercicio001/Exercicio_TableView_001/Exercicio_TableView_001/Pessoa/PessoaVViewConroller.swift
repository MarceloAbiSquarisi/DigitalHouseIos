

import UIKit

class PessoaVViewConroller: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    public static func getViewController() -> PessoaVViewConroller? {
        if let viewController = UIStoryboard(name: "Pessoa$", bundle: nil).instantiateInitialViewController()
                as? PessoaVViewConrollerViewController {
            return viewController
        }
        return nil
    }

}

