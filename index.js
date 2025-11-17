import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.json([
    {
      name: 'Alice',
      age: 30
    },
    {
      name: 'John',
      age: 20
    },
    {
      name: 'Jacob',
      age: 40
    }
  ])
})


app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000')
})