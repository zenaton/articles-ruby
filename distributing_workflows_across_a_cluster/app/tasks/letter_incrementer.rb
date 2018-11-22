class LetterIncrementer < Zenaton::Interfaces::Task
  include Zenaton::Traits::Zenatonable

  def initialize(letter, workflow_id)
    @letter = letter
    @workflow_id = workflow_id
  end

  def handle
    puts "This is task #{@letter}, from workflow: #{@workflow_id}"
    @letter.next
  end
end
