import { pool } from '../db.js'

export const sobremi = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM sobre_mi')
    res.json(result)
};