
 add_fsm_encoding \
       {sd_mgr.state} \
       { }  \
       {{00000 0000} {00100 0001} {00101 0010} {00110 0011} {00111 0100} {01000 0101} {01001 0110} {01010 0111} {01101 1000} {01110 1001} {01111 1010} {10000 1011} }

 add_fsm_encoding \
       {sd_phy.istate} \
       { }  \
       {{0000000 000} {0000001 001} {0000100 010} {0001010 100} {0001011 011} }

 add_fsm_encoding \
       {sd_phy.distate} \
       { }  \
       {{0000000 000} {0000100 001} {0010100 010} {0010101 011} {0010110 100} {0010111 101} }

 add_fsm_encoding \
       {sd_phy.ostate} \
       { }  \
       {{0000000 000} {0000100 001} {0001110 010} {0001111 011} {0010000 100} }

 add_fsm_encoding \
       {sd_phy.dostate} \
       { }  \
       {{0000000 0000} {0000100 0001} {0011000 0110} {0011001 0111} {0011010 1000} {0011110 0010} {0011111 0011} {0100000 0100} {0100001 0101} }
