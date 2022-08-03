//
//  ViewController.swift
//  Catalyst1
//
//  Created by Don Mag on 8/3/22.
//

import UIKit

class ViewController: UIViewController {

	let tf = UITextField()
	let infoLabel = UILabel()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let stackV = UIStackView()
		stackV.axis = .vertical
		stackV.spacing = 8
		stackV.backgroundColor = .blue
		stackV.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(stackV)
		
		let g = view.safeAreaLayoutGuide
		NSLayoutConstraint.activate([
			stackV.topAnchor.constraint(equalTo: g.topAnchor, constant: 40.0),
			stackV.leadingAnchor.constraint(equalTo: g.leadingAnchor, constant: 40.0),
			stackV.trailingAnchor.constraint(equalTo: g.trailingAnchor, constant: -40.0),
			//stackV.bottomAnchor.constraint(equalTo: g.bottomAnchor, constant: -40.0),
		])
		
		tf.borderStyle = .roundedRect
		tf.text = "Text Field"
		stackV.addArrangedSubview(tf)

		let btn = UIButton()
		btn.setTitle("Tap Me", for: [])
		btn.setTitleColor(.white, for: .normal)
		btn.setTitleColor(.lightGray, for: .highlighted)
		btn.backgroundColor = .systemRed
		btn.addTarget(self, action: #selector(gotTap(_:)), for: .touchUpInside)
		stackV.addArrangedSubview(btn)
		
		infoLabel.backgroundColor = .cyan
		infoLabel.text = "Info:"
		infoLabel.font = .systemFont(ofSize: 32.0, weight: .light)
		infoLabel.numberOfLines = 0
		stackV.addArrangedSubview(infoLabel)
		
	}

	@objc func gotTap(_ sender: Any?) {
		let str = tf.text ?? "Empty"
		infoLabel.text = "Info: \(str)"
	}

}

