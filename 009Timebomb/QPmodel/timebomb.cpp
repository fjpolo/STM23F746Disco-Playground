//.$file${.::QPmodel::timebomb.cpp} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//
// Model: timebombQPmodel.qm
// File:  ${.::QPmodel::timebomb.cpp}
//
// This code has been generated by QM 5.1.1 <www.state-machine.com/qm/>.
// DO NOT EDIT THIS FILE MANUALLY. All your changes will be lost.
//
// This program is open source software: you can redistribute it and/or
// modify it under the terms of the GNU General Public License as published
// by the Free Software Foundation.
//
// This program is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
// or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
// for more details.
//
//.$endhead${.::QPmodel::timebomb.cpp} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#include "qpcpp.hpp" // QP/C++ framework API
#include "QPbsp.hpp"   // Board Support Package interface
#include "bsp.h"

using namespace QP;
static uint8_t blinkyCounter;

// ask QM to declare the Timebomb class ----------------------------------------
//.$declare${AOs::Timebomb} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//.${AOs::Timebomb} ..........................................................
class Timebomb : public QP::QActive {
private:
    QP::QTimeEvt m_timeEvt;

public:
    static Timebomb instance;

public:
    Timebomb();

protected:
    Q_STATE_DECL(initial);
    Q_STATE_DECL(WaitForButton);
    Q_STATE_DECL(blink);
    Q_STATE_DECL(pause);
    Q_STATE_DECL(boom);
};
//.$enddecl${AOs::Timebomb} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

// opaque pointer to the Timebomb active object --------------------------------
//.$skip${QP_VERSION} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//. Check for the minimum required QP version
#if (QP_VERSION < 690U) || (QP_VERSION != ((QP_RELEASE^4294967295U) % 0x3E8U))
#error qpcpp version 6.9.0 or higher required
#endif
//.$endskip${QP_VERSION} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//.$define${AOs::AO_Timebomb} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//.${AOs::AO_Timebomb} .......................................................
QP::QActive * const AO_Timebomb = &Timebomb::instance;
//.$enddef${AOs::AO_Timebomb} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

// ask QM to define the Timebomb class (including the state machine) -----------
//.$define${AOs::Timebomb} vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
//.${AOs::Timebomb} ..........................................................
Timebomb Timebomb::instance;
//.${AOs::Timebomb::Timebomb} ................................................
Timebomb::Timebomb()
  : QActive(Q_STATE_CAST(&Timebomb::initial)),
    m_timeEvt(this, TIMEOUT_SIG, 0U)
{}

//.${AOs::Timebomb::SM} ......................................................
Q_STATE_DEF(Timebomb, initial) {
    //.${AOs::Timebomb::SM::initial}
    QPBSP::ledOff();

    QS_FUN_DICTIONARY(&Timebomb::WaitForButton);
    QS_FUN_DICTIONARY(&Timebomb::blink);
    QS_FUN_DICTIONARY(&Timebomb::pause);
    QS_FUN_DICTIONARY(&Timebomb::boom);

    return tran(&WaitForButton);
}
//.${AOs::Timebomb::SM::WaitForButton} .......................................
Q_STATE_DEF(Timebomb, WaitForButton) {
    QP::QState status_;
    switch (e->sig) {
        //.${AOs::Timebomb::SM::WaitForButton::BUTTON_PRESSED}
        case BUTTON_PRESSED_SIG: {
            /*UART debug*/
            BSP::debug("Button pressed\r\n");
            /*Reset counter*/
            blinkyCounter = 5;
            status_ = tran(&blink);
            break;
        }
        //.${AOs::Timebomb::SM::WaitForButton::BUTTON_RELEASED}
        case BUTTON_RELEASED_SIG: {
            BSP::debug("Button released\r\n");
            QPBSP::ledOff();
            status_ = Q_RET_HANDLED;
            break;
        }
        default: {
            status_ = super(&top);
            break;
        }
    }
    return status_;
}
//.${AOs::Timebomb::SM::blink} ...............................................
Q_STATE_DEF(Timebomb, blink) {
    QP::QState status_;
    switch (e->sig) {
        //.${AOs::Timebomb::SM::blink}
        case Q_ENTRY_SIG: {
            /*LED on*/
            QPBSP::ledOn();
            /*arm the private time event to expire in 1/2s and nonperiodically*/
            m_timeEvt.armX(QPBSP::TICKS_PER_SEC/2,0);
            status_ = Q_RET_HANDLED;
            break;
        }
        //.${AOs::Timebomb::SM::blink::TIMEOUT}
        case TIMEOUT_SIG: {
            status_ = tran(&pause);
            break;
        }
        default: {
            status_ = super(&top);
            break;
        }
    }
    return status_;
}
//.${AOs::Timebomb::SM::pause} ...............................................
Q_STATE_DEF(Timebomb, pause) {
    QP::QState status_;
    switch (e->sig) {
        //.${AOs::Timebomb::SM::pause}
        case Q_ENTRY_SIG: {
            /*LED off*/
            QPBSP::ledOff();
            /*arm the private time event to expire in 1/2s and nonperiodically*/
            m_timeEvt.armX(QPBSP::TICKS_PER_SEC/2,0);
            status_ = Q_RET_HANDLED;
            break;
        }
        //.${AOs::Timebomb::SM::pause::TIMEOUT}
        case TIMEOUT_SIG: {
            /*debug*/
            BSP::debug("%d...", blinkyCounter);
            /*Decrement counter*/
            --blinkyCounter;
            //.${AOs::Timebomb::SM::pause::TIMEOUT::[blinkyCounter>0]}
            if (blinkyCounter > 0) {
                status_ = tran(&blink);
            }
            //.${AOs::Timebomb::SM::pause::TIMEOUT::[else]}
            else {
                status_ = tran(&boom);
            }
            break;
        }
        default: {
            status_ = super(&top);
            break;
        }
    }
    return status_;
}
//.${AOs::Timebomb::SM::boom} ................................................
Q_STATE_DEF(Timebomb, boom) {
    QP::QState status_;
    switch (e->sig) {
        //.${AOs::Timebomb::SM::boom}
        case Q_ENTRY_SIG: {
            /*LED on*/
            QPBSP::ledOn();
            /*Make it BOOM*/
            BSP::debug("\r\nBOOM!!!\r\n");
            status_ = Q_RET_HANDLED;
            break;
        }
        default: {
            status_ = super(&top);
            break;
        }
    }
    return status_;
}
//.$enddef${AOs::Timebomb} ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^