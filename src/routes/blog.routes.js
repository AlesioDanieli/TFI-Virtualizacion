import { Router } from 'express';
const router = Router();
import { ping } from '../controllers/blog.controller.js'

router.get('/blog', ping)

export default router