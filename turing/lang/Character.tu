unit
class Character
  inherit Object in "%oot/turing/lang/Object.tu"
  export alloc, charValue
  
  var data: char
  
  proc alloc(character: char)
    data = char
  end alloc
  
  fcn charValue(): char
    result data
  end charValue
end Character
