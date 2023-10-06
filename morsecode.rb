# frozen_string_literal: true

@morse_code_to_char = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(morse_code)
  @morse_code_to_char[morse_code] || '?'
end

def decode_word(morse_word)
  morse_code_to_words = morse_word.split
  word = ''
  morse_code_to_words.each do |i|
    word += decode_char(i)
  end
  word
end

def decode_sentence(morse_sentence)
  morse_code_to_sentence = morse_sentence.split('   ')
  sentence = ''
  morse_code_to_sentence.each do |j|
    sentence += "#{decode_word(j)} "
  end
  sentence.chop
end
