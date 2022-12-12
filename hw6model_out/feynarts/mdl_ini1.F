*     LanHEP output produced at Sun Jul  4 02:07:59 2021
*     Model named 'hw6'

      subroutine ModelDefaults(argc,argv)

      implicit none

      integer argc

      character*128 argv(*)

#include "decl.h"

      g = 1D0
      mb = 91.188D0
      m1 = 172.5D0
      m2 = 1.777D0
      m3 = 4.24D0

      end

      subroutine ModelVarFromFile(nFile)
      implicit none
      double precision sqrtS
      integer nFile
      double precision Alfas

#include "decl.h"
      character*10 name
       real*8  val

      character*128 argv(1)
      call ModelDefaults(0,argv)

123   continue
      read(nFile,*,end=321) name, val
      if(name.eq."g") then
         g=val
      else if(name.eq."mb") then
         mb=val
      else if(name.eq."m1") then
         m1=val
      else if(name.eq."m2") then
         m2=val
      else if(name.eq."m3") then
         m3=val
      else if(name.eq."mh") then
         mh=val
      endif
      goto 123
321   continue
      end


      subroutine ModelConstIni(fail)
      implicit none
      integer fail

#include "decl.h"

      double precision 
     > creal,cimag,cabs

      fail=0
      mh = 1D0/mb
      call mtrini
      end

      subroutine mtrini
      implicit none
#include "decl.h"

      integer m1,m2,m3,m4


      end

***********************************************

      subroutine ModelVarIni(fail, sqrtS)
      implicit none
      double precision sqrtS
      integer fail
      double precision Alfas

#include "decl.h"

c      double precision ALPHAS2
c      external ALPHAS2

c      Alfas = ALPHAS2(sqrtS)
c      GG = sqrt(4*pi*Alfas)
      fail=0
      end

************************************************

      subroutine ModelDigest
      implicit none

#include "decl.h"

      write(16,*) 'g=',g
      write(16,*) 'mb=',mb
      write(16,*) 'm1=',m1
      write(16,*) 'm2=',m2
      write(16,*) 'm3=',m3
      write(16,*) 'mh=',mh

      end

