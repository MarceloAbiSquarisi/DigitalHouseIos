import UIKit

class PeopleViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func actionSegmentedControlType(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self


    }

    public static func getViewController() -> PeopleViewController? {
        if let viewController = UIStoryboard(name: "People", bundle: nil).instantiateInitialViewController()
                as? PeopleViewController {
            return viewController
        }
        return nil
    }

}


extension PeopleViewController: UITableViewDelegate {

    // Ação quando o item é clicado
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Definir aqui o que acontece quando seleciona um item
    }


}

extension PeopleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return People.getDummyPeople().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleTableViewCell", for: indexPath) as! PeopleTableViewCell
        cell.setup(dataModel: People.getDummyPeople()[indexPath.row])
        return cell
    }



}






