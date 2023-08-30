import { Router } from 'express';
const router = Router();
import { trabajo } from '../controllers/trabajo.controller.js'

router.get('/trabajo', trabajo)

export default router