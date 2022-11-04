function [] = func1(callerID)
  localCallerID = 1;
  if exist("callerID", "var")
    printf("func%d: I was called by func%d\n", localCallerID, callerID);
  else
    printf("func%d: I was called by the user\n", localCallerID)
  endif

  func3(localCallerID)
endfunction
