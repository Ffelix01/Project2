//
//  ViewController.swift
//  UIKitApp
//
//  Created by Felix on 15.04.23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var segmentControl: UISegmentedControl!
  @IBOutlet var mainLabel: UILabel!
  @IBOutlet var slider: UISlider!
  @IBOutlet var textField: UITextField!
  @IBOutlet var mainButton: UIButton!
  @IBOutlet var datePicker: UIDatePicker!
  @IBOutlet var switchForm: UISwitch!

  override func viewDidLoad() {
    super.viewDidLoad()

    // MARK: Segmented Control
    segmentControl.insertSegment(withTitle: "Third", at: 2, animated: false)

    // MARK: Label
    mainLabel.text = ""
    mainLabel.font = mainLabel.font.withSize(30)
    mainLabel.textAlignment = .center
    mainLabel.numberOfLines = 2

    // MARK: Slider
    slider.value = 1
    slider.minimumValue = 1
    slider.maximumValue = 100
    slider.minimumTrackTintColor = .yellow
    slider.maximumTrackTintColor = .blue
    slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
    mainLabel.text = String(slider.value)

    // MARK: TextField
    textField.backgroundColor = .white
    textField.keyboardType = .numberPad

    // MARK: Button
    mainButton.layer.cornerRadius = 10
    mainButton.setTitle("Ready!", for: .normal)

    // MARK: DatePicker

  }
  @IBAction func segmentControlAction(_ sender: Any) {
    switch segmentControl.selectedSegmentIndex {
    case 0:
      mainLabel.text = "Selected segment with index 0"
      mainLabel.textColor = .red
    case 1:
      mainLabel.text = "Selected segment with index 1"
      mainLabel.textColor = .yellow
    case 2:
      mainLabel.text = "Selected segment with index 2"
      mainLabel.textColor = .yellow
    default: break
    }
  }

  @IBAction func sliderAction(_ sender: Any) {
    mainLabel.text = String(Int(slider.value))
  }
  @IBAction func mainButtonAction(_ sender: Any) {
    guard let text = textField.text, !text.isEmpty else { return }
      mainLabel.text = text
    }
  @IBAction func datePickerAction(_ sender: Any) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .full

    mainLabel.text = dateFormatter.string(from: datePicker.date)
  }
  @IBAction func toggleElements(_ sender: Any) {
    segmentControl.isHidden = !switchForm.isOn
    mainLabel.isHidden = !switchForm.isOn
    slider.isHidden = !switchForm.isOn
    textField.isHidden = !switchForm.isOn
    mainButton.isHidden = !switchForm.isOn
    datePicker.isHidden = !switchForm.isOn
  }
}



