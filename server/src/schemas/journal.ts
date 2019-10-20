import mongoose, { Schema, Document } from 'mongoose';
import { IRoutine } from './routine';

export interface IJournal extends Document {
  date: Date;
  training_id: IRoutine['_id'];
  _id: Schema.Types.ObjectId;
}

const JournalSchema: Schema = new Schema({
  date: { type: Date, required: true },
  training_id: { type: String, required: true },
});

export default mongoose.model<IJournal>('Journal', JournalSchema, 'journal');
