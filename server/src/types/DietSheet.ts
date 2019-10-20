export type Food = string;

export type FoodOption = {
  id: string;
  observation: string;
  foodList: Array<Food>;
};

export type Meal = {
  id: string;
  title: string;
  time: string;
  foodOptions: Array<FoodOption>;
  extraInfo: Array<string>;
};

export type DietSheet = Map<string, Array<Meal>>;
