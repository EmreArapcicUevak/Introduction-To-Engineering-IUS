function [] = func2(callerID)
  localCallerID = 2;
  if exist("callerID", "var")
    printf("func%d: I was called by func%d\n", localCallerID, callerID);
  else
    printf("func%d: I was called by the user\n", localCallerID)
  endif
endfunction
