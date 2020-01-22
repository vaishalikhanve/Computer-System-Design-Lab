load CS16B015Sub16.hdl,
output-file CS16B015Sub16.out,
compare-to CS16B015Sub16.cmp,
output-list a%B1.16.1 b%B1.16.1 sel%B4.1.4 out%B1.16.1;

set a %B0000000000000000,
set b %B0000000000000000,
set sel 1,
eval,
output;

set a %B1111111111111111,
set b %B0000000000000000,
set sel 1,
eval,
output;

set a %B1111111111111111,
set b %B1111111111111111,
set sel 1,
eval,
output;

set a %B1100000100010000,
set b %B0100000000010000,
set sel 1,
eval,
output;

set a %B1010101010101010,
set b %B0010001000100010,
set sel 1,
eval,
output;
