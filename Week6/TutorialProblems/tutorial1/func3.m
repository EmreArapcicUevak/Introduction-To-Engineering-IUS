function [] = func3(callerID)
  localCallerID = 3;
  if exist("callerID", "var")
    printf("func%d: I was called by func%d\n", localCallerID, callerID);
  else
    printf("func%d: I was called by the user\n", localCallerID)
  endif

  func2(localCallerID)
endfunction
