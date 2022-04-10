
import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        
        
    }

    private func initialize() {
        view.backgroundColor = UIColor (red: 236/255, green: 226/255, blue: 241/255, alpha: 1)
        let label = UILabel()
        label.text = "🍏Welcome"
        label.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.left.equalToSuperview().inset(50)
            maker.top.equalToSuperview().inset(150)
        }

        let textLable = UILabel()
        textLable.text = "Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text Lable Text"
        view.addSubview(textLable)
        textLable.numberOfLines = 0
        textLable.snp.makeConstraints { maker in
            maker.left.right.equalToSuperview().inset(50)
            maker.top.equalTo(label).inset(50)
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.setTitle("Get your username ->", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(250)
            maker.height.equalTo(40)
            maker.bottom.equalToSuperview().inset(30)
            
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    @objc private func buttonTapped() {
       print("We want to get a username")
    }
    
}

