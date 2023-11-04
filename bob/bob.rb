module Bob
  def self.hey(input)
    message = input.strip
    is_question = message.end_with?('?')
    is_yelling = message.match(/[[:upper:]]+/) && !message.match(/[[:lower:]]+/)

    return 'Fine. Be that way!' if message.empty?
    
    if is_yelling
      return is_question ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
    end
    
    return 'Sure.' if is_question
    
    'Whatever.'
  end
end
