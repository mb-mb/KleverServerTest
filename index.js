const grpc = require('grpc')
const accountsProto = grpc.load('accounts.proto')
const uuidv1 = require('uuid/v1')

const server = new grpc.Server()

const accounts = [
    { id: '1', lastOperation: '03/09/2021', amount: '1001.23'},
    { id: '2', lastOperation: '04/09/2021', amount: '2298.28'},
    { id: '3', lastOperation: '15/09/2021', amount: '1424.28'},
    { id: '4', lastOperation: '15/09/2021', amount: '1424.28'},
    { id: '5', lastOperation: '15/09/2021', amount: '1425.28'},
    { id: '6', lastOperation: '15/09/2021', amount: '1426.28'},
    { id: '7', lastOperation: '15/09/2021', amount: '1427.28'},
    { id: '8', lastOperation: '15/09/2021', amount: '1428.28'},
    { id: '9', lastOperation: '15/09/2021', amount: '1429.28'},
    { id: '10', lastOperation: '15/09/2021', amount: '1430.28'}
]


server.addService(accountsProto.AccountService.service, {
    list: (_, callback) => {
        callback(null, accounts)
    },
    get: (call, callback) => {
        let accounts = accounts.find((n) => n.id == call.request.id)
        if (account) {
            callback(null, account)
        } else {
            callback({
                code: grpc.status.NOT_FOUND,
                details: "Not found"
            })
        }
    },
    insert: (call, callback) => {
        let account = call.request
        account.id = uuidv1()
        accounts.push(account)
        callback(null, account)
    },
    update: (call, callback) => {
        let existingAccount = account.find((n) => n.id == call.request.id)
        if (existingAccount) {
            existingAccount.lastOperation = call.request.lastOperation
            existingAccount.amount = call.request.amount
            callback(null, existingAccount)         
        } else {
            callback({
                code: grpc.status.NOT_FOUND,
                details: "Not found"
            })
        }
    },
    delete: (call, callback) => {
        let existingAccountIndex = accounts.findIndex((n) => n.id == call.request.id)
        if (existingAccountIndex != -1) {
            notes.splice(existingAccountIndex, 1)
            callback(null, {})
        } else {
            callback({
                code: grpc.status.NOT_FOUND,
                details: "Not found"
            })
        }
    }
})

server.bind('127.0.0.1:50051',
            grpc.ServerCredentials.createInsecure())
console.log('Server running at http://127.0.0.1:50051')
server.start()
