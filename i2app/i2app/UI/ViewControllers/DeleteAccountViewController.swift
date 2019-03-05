//
//  DeleteAccountViewController.swift
//  i2app
//
//  Created by Arcus Team on 5/24/16.
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

import UIKit
import Cornea

class DeleteAccountViewController: ArcusBaseRemoveViewController {

  var accountModelToDelete: AccountModel?

  // MARK: Required overrides
  override func removeButtonShouldBeEnabledString() -> String? {
    return "delete"
  }

  // MARK: IBAction overrides
  @IBAction override func confirmButtonPressed(_ sender: ArcusButton, alertView: RemovePersonAlertView) {
    super.confirmButtonPressed(sender, alertView: alertView)
    if let accountModelToDelete = accountModelToDelete {
      DispatchQueue.global(qos: .background).async {
        _ = AccountController.deleteAccount(accountModelToDelete)
      }
    }
  }
}
