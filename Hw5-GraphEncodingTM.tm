# This TM recognizes valid encoding

states:         q0,q1,q2,q3,q4,qA,qR
input_alphabet: 1,2,3,4,$,|,:
tape_alphabet:  1,2,3,4,$,|,:,_
start_state:    q0
accept_state:   qA
reject_state:   qR

delta:  q0,$__ -> q1,$__,RSS    # read in $
        q1,_?? -> qA,_??,SSS    # accept $
        q1,1_? -> q2,11?,RSS
        q1,2_? -> q2,22?,RSS
        q1,3_? -> q2,33?,RSS
        q1,4_? -> q2,44?,RSS
        q1,11? -> q2,11?,RSS
        q1,21? -> q2,22_,RSS
        q1,31? -> q2,33_,RSS
        q1,41? -> q2,44_,RSS
        q1,22? -> q2,22?,RSS
        q1,32? -> q2,33_,RSS
        q1,42? -> q2,44_,RSS
        q1,33? -> q2,33?,RSS
        q1,43? -> q2,44_,RSS
        q1,44? -> q2,44?,RSS
        q2,:?? -> q3,:??,RSS
        q3,11_ -> qR,11_,RSS    # reject self loop
        q3,111 -> qR,111,RSS
        q3,22_ -> qR,22_,RSS
        q3,221 -> qR,221,RSS
        q3,222 -> qR,222,RSS
        q3,33_ -> qR,33_,RSS
        q3,331 -> qR,331,RSS
        q3,332 -> qR,332,RSS
        q3,333 -> qR,333,RSS
        q3,44_ -> qR,44_,RSS
        q3,441 -> qR,441,RSS
        q3,442 -> qR,442,RSS
        q3,443 -> qR,443,RSS
        q3,444 -> qR,444,RSS
        q3,12_ -> qR,12_,RSS    # a:b -> b>a
        q3,13_ -> qR,13_,RSS
        q3,14_ -> qR,14_,RSS
        q3,23_ -> qR,23_,RSS
        q3,231 -> qR,231,RSS
        q3,24_ -> qR,24_,RSS
        q3,241 -> qR,241,RSS
        q3,34_ -> qR,34_,RSS
        q3,341 -> qR,341,RSS
        q3,342 -> qR,342,RSS
        q3,1?_ -> q4,1?1,RSS
        q3,2?_ -> q4,2?2,RSS
        q3,3?_ -> q4,3?3,RSS
        q3,4?_ -> q4,4?4,RSS
        q3,2?1 -> q4,2?2,RSS
        q3,3?1 -> q4,3?3,RSS
        q3,4?1 -> q4,4?4,RSS
        q3,3?2 -> q4,3?3,RSS
        q3,4?2 -> q4,4?4,RSS
        q3,4?3 -> q4,4?4,RSS
        q4,|?? -> q1,|??,RSS
        q4,_?? -> qA,_??,RSS
