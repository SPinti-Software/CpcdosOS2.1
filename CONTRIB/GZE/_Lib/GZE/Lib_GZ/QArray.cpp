//This file is part of "GZE - GroundZero Engine"

//The permisive licence allow to use GZE for free or commercial project (Apache License, Version 2.0).
//For conditions of distribution and use, see copyright notice in Licence.txt, this license must be included with any distribution of the code.

//Though not required by the license agreement, please consider the following will be greatly appreciated:
//- We would like to hear about projects where GZE is used.
//- Include an attribution statement somewhere in your project.
//- If you want to see GZE evolve please help us with a donation.

#include "Lib_GZ/QArray.h"



//#define wThis const_cast<gzQueue*>(this)

namespace Lib_GZ{
namespace cQArray{

  void fRangeShort( gzQElementAnyHold* pLeft, gzQElementAnyHold* pRight, Dlg_r_gzBool_p_gzQElement_gzQElement::DlgP _dCustomShort){

            gzQElementAnyHold* rTempNext;
            gzQElementAnyHold* rTempPrev;
            gzQElementAnyHold* rTemp;

            //gzQElementAnyHold* pStart;
            gzQElementAnyHold* pCurrent;

            // If the left and right pointers are the same, then return
            if (pLeft == pRight) return;

            // Set the Start and the Current item pointers
            pCurrent = (gzQElementAnyHold*)pLeft->pNext;

            // Loop forever (well until we get to the right)
            while (1){

                // If the start item is less then the right
               //	if ( ((((GZ_dSt_r_bool_p_gzQElementAnyHoldx_gzQElementAnyHoldx*)_dCustomShort)->oClass)->*((GZ_dSt_r_bool_p_gzQElementAnyHoldx_gzQElementAnyHoldx*)_dCustomShort)->fCall)(pLeft, pCurrent)  )
                if ( _dCustomShort.fCall( gzQElementAny( pLeft), gzQElementAny(pCurrent)  ) )
                {
                    //////
                    fSwap(pLeft, pCurrent);
                    rTemp = pLeft;
                    pLeft = pCurrent;
                    pCurrent = rTemp;
                    //////
                }

                // Check if we have reached the right end
                if (pCurrent == pRight) break;

                // Move to the next item in the list
                pCurrent = (gzQElementAnyHold*)pCurrent->pNext;

                if(pCurrent == GZ_Null){  //Antibug if show is wrong
                    return;
                }
            }

            //////
            fSwap(pLeft, pCurrent);
            rTemp = pLeft;
            pLeft = pCurrent;
            pCurrent = rTemp;
            /////
            // Save this Current item
            gzQElementAnyHold *pOldCurrent = pCurrent;
            // Check if we need to sort the left hand size of the Current point
            pCurrent = (gzQElementAnyHold*)pCurrent->pPrev;
            if (pCurrent != GZ_Null){
                if ((pLeft->pPrev != pCurrent) && (pCurrent->pNext != pLeft)){
                    fRangeShort(pLeft, pCurrent, _dCustomShort);
                    return;
                }
            }
            // Check if we need to sort the right hand size of the Current point
            pCurrent = pOldCurrent;
            pCurrent = (gzQElementAnyHold*)pCurrent->pNext;
            if (pCurrent != GZ_Null){
                if ((pCurrent->pPrev != pRight) && (pRight->pNext != pCurrent)){
                    fRangeShort(pCurrent, pRight, _dCustomShort);
                    return;
                }
            }
        }

}
}
