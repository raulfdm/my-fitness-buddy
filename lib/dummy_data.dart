import './models/training_sheet.dart';
import './models/exercise.dart';

import './models/diet_sheet.dart';
import './models/food_option.dart';

const DUMMY_TRAINING_SHEET = const [
  TrainingSheetModel(
    alias: 'Treino A',
    id: 't1',
    muscularGroup: 'Peito + Costa',
    exercises: [
      ExerciseModel(
        id: '_z8zh9ctuu',
        name: 'Supino Declinado Halteres',
        advancedTechnique: 'Rest \'n\' Pause 3x',
        repetitions: 12,
        series: 5,
      ),
      ExerciseModel(
        id: '_b5nufyj03',
        name: 'Supino Reto Halteres',
        advancedTechnique: '',
        repetitions: 10,
        series: 5,
      ),
    ],
  ),
  TrainingSheetModel(
    alias: 'Treino B',
    id: 't2',
    muscularGroup: 'Costa + Trapézio',
    exercises: [
      ExerciseModel(
        id: '_fez0il7kg',
        name: 'Levantamento Terra',
        advancedTechnique: '',
        repetitions: 8,
        series: 5,
      ),
    ],
  ),
];

const DUMMY_DIET_SHEET = const [
  DietSheetModel(
    id: 'd1',
    time: '06:30',
    title: 'Café da Manhã',
    foodOptions: [
      FoodOption(
        id: 'fo1',
        foodList: [
          '1 fruta (da sua preferência --- banana é uma boaopção aqui)',
          '15g farelo de aveia',
          '2 ovos',
        ],
        observation: 'Se for pré-treino (30 a 60min antes)',
      ),
      FoodOption(
        id: 'fo2',
        foodList: [
          '2 fatias de pão 100% integral',
          '2 ovos',
        ],
        observation: 'Se for pré-treino (30 a 60min antes)',
      ),
    ],
  ),
];
