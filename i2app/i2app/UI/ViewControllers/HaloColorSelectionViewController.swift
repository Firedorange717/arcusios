//
//  HaloColorSelectionViewController.swift
//  i2app
//
//  Arcus Team on 11/4/16.
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
//  This color picker variant exists to support Halo's restricted range of hues.
//

import Foundation
import Cornea

@objc class HaloColorSelectionViewController: ArcusNormalColorTempSelectionViewController {
  override class func create() -> HaloColorSelectionViewController {
    let storyboard: UIStoryboard = UIStoryboard(name: "ColorSelection", bundle:nil)
    return (storyboard
      .instantiateViewController(withIdentifier: String(describing: HaloColorSelectionViewController.self))
      as? HaloColorSelectionViewController)!
  }

  override var selectionType: ColorSelectionType {
    set {
      assert(newValue == .color, "This color selection mode is not supported by this controller.")
      super.selectionType = newValue
    }
    get {
      return super.selectionType
    }
  }

}
