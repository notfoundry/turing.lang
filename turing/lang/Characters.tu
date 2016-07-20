unit
module Characters
  import Character in "%oot/turing/lang/Character.tu"
  export fromChar
  
  fcn fromChar(character: char): ^Character
    var resultChar: ^Char
    new resultChar; resultChar -> alloc(character);
    result resultChar
  end fromChar
  
end Characters
