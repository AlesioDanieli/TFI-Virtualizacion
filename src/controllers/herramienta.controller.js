import { pool } from '../db.js'

export const herramienta = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM herramientas')
    res.json(result)
};