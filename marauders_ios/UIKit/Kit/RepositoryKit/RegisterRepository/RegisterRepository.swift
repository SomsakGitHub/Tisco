//
//  RegisterRepository.swift
//  RegisterRepository
//
//  Created by somsak on 11/1/2567 BE.
//

import Foundation
import RxSwift

public class RegisterRepository: BaseRepository {
    public func testApi() -> Observable<TestApiModel> {
        let service = RegisterService.testApi
        return sendRequest(service: service, type: TestApiModel.self)
    }
}

public class TestApiModel: BaseModel {
    public let resStatus: Bool
}

public protocol BaseModel: Codable {
    
}
