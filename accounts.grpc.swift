//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: accounts.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `NoteServiceClient`, then call methods of this protocol to make API calls.
internal protocol NoteServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: NoteServiceClientInterceptorFactoryProtocol? { get }

  func list(
    _ request: Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Empty, NoteList>

  func get(
    _ request: NoteRequestId,
    callOptions: CallOptions?
  ) -> UnaryCall<NoteRequestId, Note>

  func insert(
    _ request: Note,
    callOptions: CallOptions?
  ) -> UnaryCall<Note, Note>

  func update(
    _ request: Note,
    callOptions: CallOptions?
  ) -> UnaryCall<Note, Note>

  func delete(
    _ request: NoteRequestId,
    callOptions: CallOptions?
  ) -> UnaryCall<NoteRequestId, Empty>
}

extension NoteServiceClientProtocol {
  internal var serviceName: String {
    return "NoteService"
  }

  /// Unary call to List
  ///
  /// - Parameters:
  ///   - request: Request to send to List.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func list(
    _ request: Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Empty, NoteList> {
    return self.makeUnaryCall(
      path: "/NoteService/List",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInterceptors() ?? []
    )
  }

  /// Unary call to Get
  ///
  /// - Parameters:
  ///   - request: Request to send to Get.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func get(
    _ request: NoteRequestId,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<NoteRequestId, Note> {
    return self.makeUnaryCall(
      path: "/NoteService/Get",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetInterceptors() ?? []
    )
  }

  /// Unary call to Insert
  ///
  /// - Parameters:
  ///   - request: Request to send to Insert.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func insert(
    _ request: Note,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Note, Note> {
    return self.makeUnaryCall(
      path: "/NoteService/Insert",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeInsertInterceptors() ?? []
    )
  }

  /// Unary call to Update
  ///
  /// - Parameters:
  ///   - request: Request to send to Update.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func update(
    _ request: Note,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Note, Note> {
    return self.makeUnaryCall(
      path: "/NoteService/Update",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeUpdateInterceptors() ?? []
    )
  }

  /// Unary call to Delete
  ///
  /// - Parameters:
  ///   - request: Request to send to Delete.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func delete(
    _ request: NoteRequestId,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<NoteRequestId, Empty> {
    return self.makeUnaryCall(
      path: "/NoteService/Delete",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeDeleteInterceptors() ?? []
    )
  }
}

internal protocol NoteServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'list'.
  func makeListInterceptors() -> [ClientInterceptor<Empty, NoteList>]

  /// - Returns: Interceptors to use when invoking 'get'.
  func makeGetInterceptors() -> [ClientInterceptor<NoteRequestId, Note>]

  /// - Returns: Interceptors to use when invoking 'insert'.
  func makeInsertInterceptors() -> [ClientInterceptor<Note, Note>]

  /// - Returns: Interceptors to use when invoking 'update'.
  func makeUpdateInterceptors() -> [ClientInterceptor<Note, Note>]

  /// - Returns: Interceptors to use when invoking 'delete'.
  func makeDeleteInterceptors() -> [ClientInterceptor<NoteRequestId, Empty>]
}

internal final class NoteServiceClient: NoteServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: NoteServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the NoteService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: NoteServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Usage: instantiate `AccountServiceClient`, then call methods of this protocol to make API calls.
internal protocol AccountServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: AccountServiceClientInterceptorFactoryProtocol? { get }

  func list(
    _ request: Empty,
    callOptions: CallOptions?
  ) -> UnaryCall<Empty, AccountList>
}

extension AccountServiceClientProtocol {
  internal var serviceName: String {
    return "AccountService"
  }

  /// Unary call to List
  ///
  /// - Parameters:
  ///   - request: Request to send to List.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func list(
    _ request: Empty,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Empty, AccountList> {
    return self.makeUnaryCall(
      path: "/AccountService/List",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeListInterceptors() ?? []
    )
  }
}

internal protocol AccountServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'list'.
  func makeListInterceptors() -> [ClientInterceptor<Empty, AccountList>]
}

internal final class AccountServiceClient: AccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: AccountServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the AccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: AccountServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

