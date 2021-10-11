const client = require('./client')

client.get({ id: '1' }, (error, account) => {
    if (!error) {
        console.log('Account feched successfully', account)
    } else {
        console.error(error)
    }
})
