import { pool } from '../db.js'

export const trabajo = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM trabajo')
    res.json(result)
};