import UIKit

class EmptyView: UIView {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "No data Found"
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.textAlignment = .center
        
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
