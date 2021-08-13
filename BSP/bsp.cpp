#include "bsp.h"
#include <cmath>


UART_HandleTypeDef huart1;
extern SAI_HandleTypeDef haudio_out_sai;

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
    /*BSP::Audio*/
    namespace Audio{
    	/**/
    	classAudio::classAudio(){
    		samplerate = AUDIO_FREQUENCY_48K;
    		signalFrequency = 100;
			volume = 10;
			signalType = BSP::SignalType::Ramp;
			classAudio::setSignalType(signalType);
    	}
    	classAudio::~classAudio(){
    		HAL_SAI_DMAStop(&haudio_out_sai);
    	}
    	void classAudio::NullFill(int16_t* buf, uint32_t num_samples){
    		for(uint32_t i=0; i<num_samples; ++i){
				buf[i] = 0;
			}
    	}
    	void classAudio::SquareFill(int16_t* buf, uint32_t num_samples){
			// Fill up a 100Hz square wave
			static int togglePeriod = AUDIO_FREQUENCY_48K / (signalFrequency * MY_DMA_BYTES_PER_MSIZE);

			int count = 0;
			int waveState = 1;
			int magnitude = 30000;
			/**/
			for(uint32_t i=0; i<num_samples;++i){
				buf[i] = magnitude * waveState;
				++count;
				if(count >= togglePeriod){
					count = 0;
					waveState = waveState * (-1);
				}
			}
		}
		void classAudio::SineFill(int16_t* buf, uint32_t num_samples){
			int magnitude = 30000;
			for(uint32_t i=0; i<num_samples; ++i){
				float t = i/static_cast<float>(samplerate);
				buf[i] =  magnitude * std::sin(2 * M_PI * signalFrequency * t);
			}
		}
		void classAudio::RampFill(int16_t* buf, uint32_t num_samples){
			int magnitude = 30000;
			for(uint32_t i=0; i<num_samples; ++i){
				buf[i] =  magnitude * i/static_cast<float>(num_samples);
			}
		}
		void classAudio::BufferToDMA(int16_t* sampleBuffer, uint8_t* dmaBuffer, uint32_t numSamples){
			for(uint32_t i=0; i<numSamples;++i){
				int16_t* p = (int16_t*)&dmaBuffer[i*8]; // samples are spaced 8 bytes apart
				*p = sampleBuffer[i];
				*(p+2) = sampleBuffer[i];
			}
		}
		void classAudio::setVolume(uint8_t _volume){
			volume = _volume;
		}
		void classAudio::setFrequency(uint32_t _frequency){
			signalFrequency = _frequency;
		}
		uint8_t classAudio::getVolume()const{
			return volume;
		}
		uint32_t classAudio::getFrequency()const{
			return signalFrequency;
		}
		void classAudio::run(void){
			classAudio::BufferToDMA(playbackBuffer, saiDMATransmitBuffer, BSP::Audio::MY_BUFFER_SIZE_SAMPLES);
			BSP_AUDIO_OUT_Init(OUTPUT_DEVICE_HEADPHONE, volume, samplerate);
    		HAL_SAI_Transmit_DMA(&haudio_out_sai, (uint8_t*)saiDMATransmitBuffer, BSP::Audio::MY_DMA_BUFFER_SIZE_MSIZES);
		}
		void classAudio::stop(void)const{
			HAL_SAI_DMAStop(&haudio_out_sai);
		}
		void classAudio::setSignalType(SignalType _signalType){
			signalType = _signalType;
			switch(signalType){
				case BSP::SignalType::Square:
				{
					classAudio::SquareFill(playbackBuffer, BSP::Audio::MY_BUFFER_SIZE_SAMPLES);
					break;
				}
				case BSP::SignalType::Sine:
				{
					classAudio::SineFill(playbackBuffer, BSP::Audio::MY_BUFFER_SIZE_SAMPLES);
					break;
				}
				case BSP::SignalType::Ramp:
				{
					classAudio::RampFill(playbackBuffer, BSP::Audio::MY_BUFFER_SIZE_SAMPLES);
					break;
				}
				default:
				{
					classAudio::NullFill(playbackBuffer, BSP::Audio::MY_BUFFER_SIZE_SAMPLES);
					break;
				}
			}
		}
		SignalType classAudio::getSignalType()const{
			return signalType;
		}

    } // END namespace Audio
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
