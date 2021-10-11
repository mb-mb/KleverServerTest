const client = require('./client')
client.list({}, (error, accounts) => {
    if (!error) {
        console.log('successfully fetch List accounts')
        console.log(accounts)
    }
})