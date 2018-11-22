class Alphabet < Zenaton::Interfaces::Workflow
  include Zenaton::Traits::Zenatonable

  def initialize(id)
    @letter = 'A'
    @id = id
  end

  def handle
    @letter = LetterIncrementer.new(@letter, @id).execute while @letter != 'F'
  end
end
