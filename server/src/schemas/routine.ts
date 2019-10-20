import mongoose, { Schema, Document } from 'mongoose';

export interface IRoutine extends Document {
  alias: string;
  group_name: string;
}

const RoutineSchema: Schema = new Schema({
  alias: { required: true, type: String },
  group_name: { required: true, type: String },
});

export default mongoose.model<IRoutine>('Routine', RoutineSchema, 'routine');
