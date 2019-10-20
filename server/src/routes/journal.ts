import { Application } from 'express';
import { Error } from 'mongoose';
import { sortBy } from 'lodash';

import trainingSheets from '../data/trainingSheets';

import Journal, { IJournal } from '../schemas/journal';
import { Database } from '../config/db';

module.exports = (app: Application) => {
  app.get('/journal', (_, res) => {
    Database.connect();

    Journal.find()
      .then((data: Array<IJournal>) => {
        const latestVersionData = trainingSheets.v0;
        const result = data.map(j => {
          /* TODO: Fix this logic when move everything to database and split it up */
          const trainingSheet = latestVersionData.find(
            t => t.id === j.training_id,
          );

          return {
            ...j.toObject(),
            training_name: trainingSheet ? trainingSheet.alias : '',
            group_name: trainingSheet ? trainingSheet.group_name : '',
          };
        });

        res.json(sortBy(result, 'date').reverse());
      })
      .catch((err: Error) => {
        console.log('err', err);
        res.sendStatus(500).send(err);
      })
      .finally(Database.disconnect);
  });

  app.post('/journal', (req, res) => {
    const { training_id, date } = req.body;

    /* TODO: Implement express-validator or some library
    And improve the quality of this validation
    */
    if (!training_id) {
      res.sendStatus(422).json({
        training_id: 'is required',
      });
    }

    if (!date) {
      res.sendStatus(422).json({
        date: 'is required',
      });
    }

    Database.connect();

    new Journal({ date, training_id })
      .save()
      .then((journal: IJournal) => {
        res.json(journal);
      })
      .catch((err: Error) => {
        console.error(err);
        res.sendStatus(500).send(err);
      })
      .finally(Database.disconnect);
  });
};
