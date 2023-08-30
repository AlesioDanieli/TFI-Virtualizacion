import { Router } from 'express';
const router = Router();
import { sobremi } from '../controllers/sobremi.controller.js'

router.get('/sobremi', sobremi)

export default router