import { Application } from 'express';
import { pick, isEmpty } from 'lodash';

import { getLastVersion } from '../helpers/data';

import trainingSheets from '../data/trainingSheets';

module.exports = (app: Application) => {
  app.get('/routine', (req, res) => {
    const customData = isEmpty(req.query);

    const lastTrainingSheets = getLastVersion(trainingSheets);

    /* TODO: Extract it into a function */
    if (!customData) {
      const { alias, group_name } = req.query;
      const { data } = lastTrainingSheets;
      const keysToPick = ['id'];

      if (alias) {
        keysToPick.push('alias');
      }
      if (group_name) {
        keysToPick.push('group_name');
      }
      const nextData = data.map(d => pick(d, keysToPick));

      res.json({ ...lastTrainingSheets, data: nextData });
    } else {
      res.json(lastTrainingSheets);
    }
  });

  app.get('/routines', (_, res) => {
    res.json(trainingSheets);
  });
};
