import { pool } from '../db.js'

export const persona = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM persona')
    res.json(result)
};