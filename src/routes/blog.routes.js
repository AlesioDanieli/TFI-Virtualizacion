import { Router } from 'express';
const router = Router();
import { blog } from '../controllers/blog.controller.js'

router.get('/blog', blog)

export default router