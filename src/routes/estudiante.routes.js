import { Router } from 'express';
const router = Router();
import { estudiante } from '../controllers/estudiante.controller.js'

router.get('/estudiante', estudiante)

export default router