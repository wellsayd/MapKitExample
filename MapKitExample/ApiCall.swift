//
//  ApiCall.swift
//  MapKitExample
//
//  Created by bwells on 2/17/23.
//

import Foundation

/// Handles success or errors for api calls
///
/// - success: api success
/// - noConnection: api no connection
/// - error: api error
/// - noResults: api no results
public enum ApiStatus {
    case success
    case error
}
