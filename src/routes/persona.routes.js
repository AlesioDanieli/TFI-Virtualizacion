import { Router } from 'express';
const router = Router();
import { persona } from '../controllers/persona.controller.js'

router.get('/persona', persona)

export default router