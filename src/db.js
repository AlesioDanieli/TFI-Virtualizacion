import {createPool} from 'mysql2/promise'

export const pool = createPool({
    host: 'containers-us-west-87.railway.app',
    user: 'root',
    password: 'ItHIqPBfIgWyKNWB3F8T',
    port: '5998',
    database: 'railway'
})

