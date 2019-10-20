import mongoose from 'mongoose';

declare const process: {
  env: {
    DB_CONNECTION: string;
  };
};

export class Database {
  static connect() {
    return mongoose.connect(process.env.DB_CONNECTION, {
      useNewUrlParser: true,
    });
  }

  static disconnect() {
    return mongoose.disconnect();
  }
}
