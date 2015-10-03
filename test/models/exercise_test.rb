require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "exercise belongs to type" do
    work_it = Exercise.create!(burn: 200)
    work_it_type = ExerciseType.create!(name: "end")
    work_it.exercise_type = work_it_type
    work_it.save
    assert_equal work_it_type, work_it.reload.exercise_type
  end

  test "total calories consumed" do
    Exercise.create(burn: 500)
    Exercise.create(burn: 400)
    assert_equal Exercise.burned, 1885
  end
end
