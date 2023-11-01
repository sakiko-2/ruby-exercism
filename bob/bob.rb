class Bob
  def self.hey(input)
    message = input.strip
    is_question = message.end_with?('?')
    is_yelling = message.match(/[[:upper:]]+/) && !message.match(/[[:lower:]]+/)

    if message.empty?
      'Fine. Be that way!'
    elsif is_question && is_yelling
      "Calm down, I know what I'm doing!"
    elsif is_yelling
      'Whoa, chill out!'
    elsif is_question
      'Sure.'
    else
      'Whatever.'
    end
  end
end
