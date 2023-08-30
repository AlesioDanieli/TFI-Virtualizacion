import { Router } from 'express';
const router = Router();
import { herramienta } from '../controllers/herramienta.controller.js'

router.get('/herramienta', herramienta)

export default router