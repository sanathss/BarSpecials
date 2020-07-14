//Express Variables
const express = require('express')
const app = express()


app.get('/test', (req, res) => {
    res.send('This is a test function called malwatte')
})

app.listen(3000, () => {
    console.log('Server is now listening...')
})
   
