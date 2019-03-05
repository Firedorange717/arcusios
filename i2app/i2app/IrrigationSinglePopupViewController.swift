//
//  IrrigationSinglePopupViewController.swift
//  i2app
//
//  Created by Arcus Team on 4/20/18.
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//

import Foundation

protocol IrrigationSinglePopupDelegate: class {
  func irrigationSinglePopupSelectedOptionIndex(_ index: Int)
}

class IrrigationSinglePopupViewController: ArcusPopupViewController {
  
  var titleText = ""
  var options = [String]()
  var selectedOptionIndex = 0
  weak var popupDelegate: IrrigationSinglePopupDelegate?
  
  @IBOutlet weak var popupTitle: UILabel!
  @IBOutlet weak var picker: UIPickerView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureViews()
  }
  
  @IBAction func saveButtonPressed(_ sender: Any) {
    let selectedIndex = picker.selectedRow(inComponent: 0)
    if options.count > selectedIndex {
      popupDelegate?.irrigationSinglePopupSelectedOptionIndex(selectedIndex)
    }
    dismissView()
  }
  
  @IBAction func cancelButtonPressed(_ sender: Any) {
    dismissView()
  }
  
  private func configureViews() {
    popupTitle.text = titleText
    picker.showsSelectionIndicator = false
    
    picker.selectRow(selectedOptionIndex, inComponent: 0, animated: false)
    
    let recognizer = UITapGestureRecognizer(target: self, action: #selector(dismissView))
    backgroundView.addGestureRecognizer(recognizer)
  }
  
  @objc private func dismissView() {
    dismiss(animated: true, completion: nil)
  }
  
}

extension IrrigationSinglePopupViewController: UIPickerViewDataSource {
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return options.count
  }
  
  func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
    return 60.0
  }
  
}

extension IrrigationSinglePopupViewController: UIPickerViewDelegate {
  
  func pickerView(_ pickerView: UIPickerView,
                  viewForRow row: Int,
                  forComponent component: Int,
                  reusing view: UIView?) -> UIView {
    if let label = view as? UILabel {
      label.text = options[row]
      return label
    } else {
      let label = UILabel()
      label.font = UIFont(name: "AvenirNext-UltraLight", size: 35.0)
      label.minimumScaleFactor = 0.1
      label.adjustsFontSizeToFitWidth = true
      label.textAlignment = .center
      label.text = options[row]
      return label
    }
  }
  
}
