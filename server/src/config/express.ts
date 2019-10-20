import express from 'express';
import { resolve } from 'path';
import bodyParser from 'body-parser';
// @ts-ignore
import consign from 'consign';

const app = express();

app.use(bodyParser.json());

consign({ cwd: resolve(__dirname), extensions: ['.js', '.ts'] })
  .include('../routes')
  .into(app);

export default app;
