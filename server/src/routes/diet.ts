import { Application } from 'express';

import dietSheet from '../data/dietSheet';
import { getLastVersion } from '../helpers/data';

module.exports = (app: Application) => {
  app.get('/diet', (_, res) => {
    res.json(getLastVersion(dietSheet));
  });

  app.get('/diets', (_, res) => {
    res.json(dietSheet);
  });
};
