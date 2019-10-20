export type Version = string;

export type Exercise = {
  advanced_technique: string;
  id: string;
  name: string;
  repetition: string;
  series: string;
};

export type TrainingSheet = {
  alias: string;
  group_name: string;
  id: string;
  rest_time?: Array<number>;
  exercises?: Array<Exercise>;
};

export type FoodOptions = {
  id: string;
  observation: string;
  foodList: Array<String>;
};

export type DietSheet = {
  id: string;
  title: string;
  time: string;
  foodOptions: Array<FoodOptions>;
  extraInfo?: Array<string>;
};

export type SheetModel = Array<TrainingSheet | DietSheet>;

export type VersionedData = {
  [version: string]: SheetModel;
};

export type LastVersion = {
  version: Version;
  data: SheetModel;
};
