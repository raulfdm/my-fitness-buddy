import './models/training_sheet.dart';
import './models/exercise.dart';

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
