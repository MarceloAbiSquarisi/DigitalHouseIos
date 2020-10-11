import UIKit

class PeopleTableViewCell: UITableViewCell {

    //Outlets

    @IBOutlet weak var ImageView: UIImageView!

    @IBOutlet weak var LabelName: UILabel!

    @IBOutlet weak var LabelEmail: UILabel!
    
    func setup(dataModel: People) {

        ImageView.image = UIImage.init(named: dataModel.photo)
        LabelName.text = dataModel.name
        LabelEmail.text = dataModel.email

    }


}
