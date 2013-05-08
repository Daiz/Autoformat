autoformat ->

  default settings ->
    n-dash:         false
    fancy-quotes:   true
    italic-spacing: true
    balanced-ends:  true

  calculate values ->
    get video size
    calculate tight margins

  parse subtitles (linear) ->
    
    find settings comment if present ->
      "AUTOFORMAT setting1: boolean setting2: boolean"
      override defaults

    if line has "---" in it ->
      n-dash: true

    do quote analysis ->
      mark beginning_quote & ending_quote stuff
    
    find lines with preset linebreaking ->
      mark for no linebreaking
  
  parse through times ->
    
    check overlaps ->
      
      if in same alignment ->
        mark for no linebreaking

      if in different alignment ->
        mark for lax linebreaking


  parse selected_lines (atomic operations) ->

    if 

