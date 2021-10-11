const PROTO_PATH = './accounts.proto';
const grpc = require('grpc');
const AccountService = grpc.load(PROTO_PATH).AccountService
const client = new AccountService('localhost:50051',
    grpc.credentials.createInsecure());

module.exports = client