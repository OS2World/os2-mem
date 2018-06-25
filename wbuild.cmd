/* */

bldate = RIGHT( DATE('N'), 11 )
bltime = TIME()
blhost = RIGHT( VALUE('HOSTNAME',,'OS2ENVIRONMENT'), 14 )
blvend = 'Alexander Taylor'
blver  = '1.1'
blsig  = '@#'blvend':'blver'#@##1##' bldate bltime blhost'::::::@@MEM.EXE - report physical memory'

'wcl386 -bc -bm -wx -"option de '''blsig'''" mem.c libuls.lib'

RETURN rc
