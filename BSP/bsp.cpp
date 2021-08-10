#include "bsp.h"

UART_HandleTypeDef huart1;

namespace BSP
{
	/*BSP::LED*/
    namespace LED
    {
        classLED::classLED(GPIOPort _port, GPIOPin _pin) : port_(_port), pin_(_pin)
        {
        	setPortNumber(_port);
        	setPinLow();
        }
        classLED::~classLED() {}
        void classLED::setPinHigh(){
        	HAL_GPIO_WritePin(HALport_p, pin_, GPIO_PIN_SET);
        	pinState_ = BSP::GPIOPinState::PinHigh;
        }
        void classLED::setPinLow(){
        	HAL_GPIO_WritePin(HALport_p, pin_, GPIO_PIN_RESET);
        	pinState_ = BSP::GPIOPinState::PinLow;
        }
        void classLED::togglePin()
        {
            HAL_GPIO_TogglePin(HALport_p, pin_);
            if(pinState_ == BSP::GPIOPinState::PinHigh) pinState_ = BSP::GPIOPinState::PinLow;
            else pinState_ = BSP::GPIOPinState::PinHigh;
        }
        GPIOPin classLED::getPinNumber() const {
        	return pin_;
        }
        GPIOPort classLED::getPortNumber() const {
        	return port_;
        }
        GPIOPinState classLED::getPinState(){
        	return pinState_;
        }
        void classLED::setPinNumber(GPIOPin _pin) {
        	pin_ = _pin;
        }
        void classLED::setPortNumber(GPIOPort _port) {
        	port_ = _port;
        	switch (_port)
			{
			case PortA:
				HALport_p = GPIOA;
				break;
			case PortB:
				HALport_p = GPIOB;
				break;
			case PortC:
				HALport_p = GPIOC;
				break;
			case PortD:
				HALport_p = GPIOD;
				break;
			case PortE:
				HALport_p = GPIOE;
				break;
			case PortF:
				HALport_p = GPIOF;
				break;
			case PortG:
				HALport_p = GPIOG;
				break;
			case PortH:
				HALport_p = GPIOH;
				break;
			case PortI:
				HALport_p = GPIOI;
				break;
			case PortJ:
				HALport_p = GPIOJ;
				break;
			case PortK:
				HALport_p = GPIOK;
				break;
			default:
				break;
			}
        }
    } // END namespace LED
    /*BSP::Button*/
    namespace Button
	{
    classButton::classButton(GPIOPort _port, GPIOPin _pin) : port_(_port), pin_(_pin)
    {
    	setPortNumber(_port);
    }
    classButton::~classButton(){}
	GPIOPinState classButton::readPin()const{
		return static_cast<BSP::GPIOPinState>(HAL_GPIO_ReadPin(HALport_p, pin_));
	}
	GPIOPin classButton::getPinNumber() const{
		return pin_;
	}
	GPIOPort classButton::getPortNumber() const{
		return port_;
	}
	void classButton::setPinNumber(GPIOPin _pin){
		pin_ = _pin;
	}
	void classButton::setPortNumber(GPIOPort _port){
		port_ = _port;
		switch (_port)
		{
		case PortA:
			HALport_p = GPIOA;
			break;
		case PortB:
			HALport_p = GPIOB;
			break;
		case PortC:
			HALport_p = GPIOC;
			break;
		case PortD:
			HALport_p = GPIOD;
			break;
		case PortE:
			HALport_p = GPIOE;
			break;
		case PortF:
			HALport_p = GPIOF;
			break;
		case PortG:
			HALport_p = GPIOG;
			break;
		case PortH:
			HALport_p = GPIOH;
			break;
		case PortI:
			HALport_p = GPIOI;
			break;
		case PortJ:
			HALport_p = GPIOJ;
			break;
		case PortK:
			HALport_p = GPIOK;
			break;
		default:
			break;
		}
	}

	} // END namespace Button
    /*** Standalone functions ***/
    /*BSP::Init(...)*/
    void Init(MainData_t* mainData_){
		/*Call CubeMX Init functions*/
		// SystemClock_Config();
		MX_GPIO_Init();
		HAL_Init();
		/*User LED*/
		static BSP::LED::classLED UserLED{BSP::GPIOPort::PortI, BSP::GPIOPin::Pin1};
		mainData_->userLED = &UserLED;
		/*User Button*/
		static BSP::Button::classButton UserButton{BSP::GPIOPort::PortI, BSP::GPIOPin::Pin11};
		mainData_->userButton = &UserButton;
		/*printf: USART1*/
		MX_USART1_UART_Init();
		RetargetInit(&huart1);
    }
} // END namespace BSP
