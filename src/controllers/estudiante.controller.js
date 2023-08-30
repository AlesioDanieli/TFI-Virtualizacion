import { pool } from '../db.js'

export const estudiante = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM estudiante')
    res.json(result)
};