module DaysHelper
    def exercises_of_day (day_id)
        @map = DayExerciseMap.where(:day_id => day_id)
        @exercises = []
        @exercise_ids = []

        for element in @map do
            @exercise_ids.push(element.exercise_id)
        end

        @exercises = Exercise.where(:id => @exercise_ids)
    end
end
