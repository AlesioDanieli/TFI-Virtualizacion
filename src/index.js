import express from 'express'
import blogRoutes from './routes/blog.routes.js'
import personaRoutes from './routes/persona.routes.js'
import estudianteRoutes from './routes/estudiante.routes.js'
import sobremiRoutes from './routes/sobremi.routes.js'
import trabajoRoutes from './routes/trabajo.routes.js'
import herramientaRoutes from './routes/herramienta.routes.js'
import cors from 'cors'

const app = express()

app.use(cors())
app.use(blogRoutes)
app.use(personaRoutes)
app.use(estudianteRoutes)
app.use(sobremiRoutes)
app.use(trabajoRoutes)
app.use(herramientaRoutes)

app.listen(3000)
console.log('Server running on port 3000')