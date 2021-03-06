//
//  Defines.swift
//  NewYourTimes_Demo
//
//  Created by An Le  on 5/4/19.
//  Copyright © 2019 An Le. All rights reserved.
//

import Foundation



struct Constants {
    
    static let imageCacheDirectory = "images"
    static let searchArticleDBKey = "searchArticleDBKey"
}



// MARK: Typealias

typealias ReadCompletionBlock<T> = (Result<T, Error>) -> Void
typealias WriteCompletionBlock = (_ successed: Bool) -> Void

typealias JSON = [String : Any]

typealias ClassOnly = AnyObject



// MARK: Enum

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum NetworkError: Error {
    case noConnection
    case unexpected
    case cancelled
}

enum FileError: Error {
    case directoryNotExist
}

enum FetchStrategy {
    
    /// Fecth from cache, unless data is available fetch from server
    case cacheFirstElseServer
    /// Fetch from cache, ignore server
    case cacheOnly
    /// Fetch from server, ignore cache
    case serverOnly
    /// Fetch from cache, then fecth from server.
    case cacheThenServer
}


