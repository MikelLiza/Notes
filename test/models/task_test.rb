require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @task = tasks(:one)
    @note = notes(:one)
  end

  test 'should not save empty task' do
    task = Task.new

    task.save
    refute task.valid?
  end

  test 'should have valid task' do
    task = Task.new

    task.title = 'My Task'
    task.note = @note

    task.save
    assert task.valid?
  end

end
