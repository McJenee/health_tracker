require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "exercise belongs to type" do
    work_it = Exercise.create!(burn: 200)
    work_it_type = ExerciseType.create!(name: "end")
    work_it.exercise_type = work_it_type
    work_it.save
    assert_equal work_it_type, work_it.reload.exercise_type
  end
end
