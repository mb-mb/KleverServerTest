const client = require('./client')
let newAccount = {
    title: "New Account",
    content: "New Account content"
}

client.insert(newAccount, (error, account) => {
    if (!error) {
        console.log('New Account created successfully', account)
    } else {
        console.error(error)
    }
})
