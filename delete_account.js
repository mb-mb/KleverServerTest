const client = require('./client')

client.delete({ id: '1' }, (error, _) => {
    if (!error) {
        console.log('Account Has been successfully deleted')
    } else {
        console.error(error)
    }
})
            