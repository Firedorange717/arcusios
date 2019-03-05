//
//  ArcusAnalytics.swift
//  i2app
//
//  Arcus Team on 4/25/16.
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
import Cornea

@objc
class ArcusAnalytics: NSObject {

    fileprivate static var routeList: [TagRoute] = []

    static func tag (_ name: String, attributes: [String:AnyObject]) {
        self.tag(CustomTag(name: name, attributes: attributes))
    }

    static func tag (named tag: String) {
        self.tag(CustomTag(name: tag, attributes: [:]))
    }

    static func tag (_ tag: ArcusTag) {
        for route in routeList {
            route.route(tag, globalAttributes: GlobalTagAttributes.getInstance())
        }
    }

    static func addRoute (_ route: TagRoute) {
        self.routeList.append(route)
    }

    static func deleteAllRoutes () {
        routeList = []
    }
}
