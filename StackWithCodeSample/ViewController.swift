import UIKit

class ViewController: UIViewController {
    // 表示/非表示を切り替えるラベル
    let yellowLabel: UILabel = {
        let label = UILabel()
        label.text = "黄色いラベル"
        label.textAlignment = .Center
        label.backgroundColor = UIColor.yellowColor()
        label.setContentHuggingPriority(249, forAxis: .Vertical)
        return label
    } ()

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonRemove: UIButton!
    
    @IBAction func addYellowLabel(sender: UIButton) {
        stackView.addArrangedSubview(yellowLabel)

        buttonAdd.enabled = false
        buttonRemove.enabled = true
    }
    
    @IBAction func removeYellowLabel(sender: UIButton) {
        stackView.removeArrangedSubview(yellowLabel)
        yellowLabel.removeFromSuperview()
        
        buttonAdd.enabled = true
        buttonRemove.enabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRemove.enabled = false
    }
}
