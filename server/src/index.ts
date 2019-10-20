import { config } from 'dotenv';
config();

import app from './config/express';

const port = process.env.PORT || 3000;

app.get('/', (_, res) => res.json({}));

app.listen(port, () => console.log(`Server running on port ${port}!`));
