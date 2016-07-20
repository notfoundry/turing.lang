unit
class StringBuilder
    inherit Object in "%oot/turing/lang/Object.tu"
    export append, finish, getString, appendObj, appendChar, getLength
    
    type ExpandedString: array 1..256 of char
    const allChars: ExpandedString := init(
    ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '\0')
    var chars: flexible array 1..256 of char
    ExpandedString @ (addr(chars)) := allChars
    var charCursor: int := 1
    
    proc finish()
        %placeholder so that users have a terminal operation when appending but not operating on data
    end finish
    
    fcn append(data: string(*)): ^StringBuilder
        const bufLength: int := upper(chars)
        if length(data) = 0 then result self
        end if
        
        if charCursor + length(data) > bufLength then
            new chars, bufLength + sizeof(string)
            ExpandedString @ (addr(chars) + upper(chars) - sizeof(string)) := allChars
        else
            chars(charCursor + length(data)) := '\0'
        end if
        
        for i: 1..length(data)
            chars(charCursor + i - 1) := data(i)
        end for

        charCursor := charCursor + length(data)
        result self
    end append
    
    fcn appendObj(o: ^Object): ^StringBuilder
        append(o -> toString()) -> finish()
        result self
    end appendObj
    
    fcn appendChar(data: char): ^StringBuilder
        result append(cheat(string(1), data))
    end appendChar
    
    fcn getLength(): nat
        result charCursor-1
    end getLength
    
    fcn getString(): unchecked ^string
        var resultString: unchecked ^string
        #resultString := addr(chars)
        result resultString
    end getString
    
    body fcn toString(): string
        type regString: array 1..250 of char
        const resultChars: regString := cheat(regString, chars)
        result string @ (addr(resultChars))
    end toString
end StringBuilder