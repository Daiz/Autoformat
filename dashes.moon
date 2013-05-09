with M = {}

  .mdash = (line) ->
    line = line\gsub '%-%-', '—'
    
    return line

  .ndash = (line) ->
    line = line\gsub '%-%-%-', '—'
    line = line\gsub '%-%-', '–'

    return line