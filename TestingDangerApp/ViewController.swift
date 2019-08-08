import UIKit

class ViewController: UIViewController {
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "bla bla bla"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

