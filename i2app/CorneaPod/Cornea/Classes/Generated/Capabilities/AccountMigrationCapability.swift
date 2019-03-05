
//
// AccountMigrationCap.swift
//
// Generated on 20/09/18
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

import Foundation
import RxSwift
import PromiseKit

// MARK: Constants

extension Constants {
  public static var accountMigrationNamespace: String = "accountmig"
  public static var accountMigrationName: String = "AccountMigration"
}



public protocol ArcusAccountMigrationCapability: class, RxArcusService {
  
  /** Creates a new V2 billing account for the user based on their V1 service level */
  func requestAccountMigrationMigrateBillingAccount(_  model: AccountModel, billingToken: String, placeID: String, serviceLevel: String)
   throws -> Observable<ArcusSessionEvent>
}

extension ArcusAccountMigrationCapability {
  
  public func requestAccountMigrationMigrateBillingAccount(_  model: AccountModel, billingToken: String, placeID: String, serviceLevel: String)
   throws -> Observable<ArcusSessionEvent> {
    let request: AccountMigrationMigrateBillingAccountRequest = AccountMigrationMigrateBillingAccountRequest()
    request.source = model.address
    
    
    
    request.setBillingToken(billingToken)
    
    request.setPlaceID(placeID)
    
    request.setServiceLevel(serviceLevel)
    
    return try sendRequest(request)
  }
  
}
