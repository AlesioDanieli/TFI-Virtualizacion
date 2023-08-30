import { pool } from '../db.js'

export const blog = async (req, res) => {
    const [result] = await pool.query('SELECT descripcion FROM blog')
    res.json(result)
};