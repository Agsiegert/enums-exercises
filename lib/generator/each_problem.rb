class EachProblem
  def self.test_suites
    exercise = Exercise.new(:each)

    exercise << Problem.new(
    ).example!

    if false
    exercise << Problem.new(
    ).loop!

    exercise << Problem.new(
    ).assignment!

    exercise << Problem.new(
    )

    exercise << Problem.new(
    )

    exercise << Problem.new(
    )

    exercise << Problem.new(
    )

    exercise << Problem.new(
    )
    end

    exercise.test_suites
  end
end
