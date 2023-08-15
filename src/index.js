import express from 'express'
import blogRoutes from './routes/blog.routes.js'

const app = express()

app.use(blogRoutes)

app.listen(3000)
console.log('Server running on port 3000')