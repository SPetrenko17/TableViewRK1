
import UIKit

class CustomTableViewCell: UITableViewCell{
    @IBOutlet var myimageView: UIImageView!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var InfoText: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func fillCell(with model: CellModel) {
        nameText.text = model.name
        InfoText.text = String(describing: model.count ?? 0)
        myimageView.image=UIImage(named: model.imagename!)
    
    }
}

