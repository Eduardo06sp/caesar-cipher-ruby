def caesar_cipher(str, key)
  alphabet = ("a".."z").to_a
  userString = str.split("")
  newString = []

  userString.each do |char|

    if alphabet.include?(char.downcase)
      alphabetIndex = alphabet.index(char.downcase)

      key.times do
        alphabetIndex += 1

        if alphabetIndex == 26
          alphabetIndex = 0
        end
      end

      newCharacter = alphabet[alphabetIndex]

      if char == char.upcase
        newString << newCharacter.upcase
      else
        newString << newCharacter
      end
    else
      newString << char
    end
  end

  newString.join
end

caesar_cipher("What a string!", 5)
