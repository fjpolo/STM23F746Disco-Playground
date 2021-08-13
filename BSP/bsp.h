#pragma once

#include "stm32f7xx_hal.h"
#include "gpio.h"
#include "usart.h"
#include <stdio.h>
#include <retarget.h>
#include "stm32746g_discovery.h"
#include "stm32746g_discovery_audio.h"



namespace BSP
{
	/*Enums*/
	enum GPIOPin
		{
			Pin0 = GPIO_PIN_0,
			Pin1 = GPIO_PIN_1,
			Pin2 = GPIO_PIN_2,
			Pin3 = GPIO_PIN_3,
			Pin4 = GPIO_PIN_4,
			Pin5 = GPIO_PIN_5,
			Pin6 = GPIO_PIN_6,
			Pin7 = GPIO_PIN_7,
			Pin8 = GPIO_PIN_8,
			Pin9 = GPIO_PIN_9,
			Pin10 = GPIO_PIN_10,
			Pin11 = GPIO_PIN_11,
			Pin12 = GPIO_PIN_12,
			Pin13 = GPIO_PIN_13,
			Pin14 = GPIO_PIN_14,
			Pin15 = GPIO_PIN_15,
		};
	enum GPIOPort
		{
			PortA = 0,
			PortB,
			PortC,
			PortD,
			PortE,
			PortF,
			PortG,
			PortH,
			PortI,
			PortJ,
			PortK,
		};
	enum GPIOPinState{
		PinLow = GPIO_PIN_RESET,
		PinHigh = GPIO_PIN_SET
	};
	enum SignalType{
		Square,
		Sine,
		Ramp
	};
	/*BSP::LED*/
	namespace LED
	{
		/*BSP::LED::classLED*/
		class classLED
		{
		public:
			classLED() = default;
			classLED(GPIOPort _port, GPIOPin _pin);
			~classLED();
			void setPinHigh();
			void setPinLow();
			void togglePin();
			GPIOPin getPinNumber() const;
			GPIOPort getPortNumber() const;
			GPIOPinState getPinState();
			void setPinNumber(GPIOPin _pin);
			void setPortNumber(GPIOPort _port);

		private:
			GPIOPort port_;
			GPIOPin pin_;
			GPIO_TypeDef* HALport_p;
			GPIOPinState pinState_;
		};
	} // END namespace LED
	/*BSP::Button*/
	namespace Button
	{
	/*BSP::Button::classButton*/
	class classButton{
	public:
		classButton() = default;
		classButton(GPIOPort _port, GPIOPin _pin);
		~classButton();
		GPIOPinState readPin()const;
		GPIOPin getPinNumber() const;
		GPIOPort getPortNumber() const;
		void setPinNumber(GPIOPin _pin);
		void setPortNumber(GPIOPort _port);
	private:
		GPIOPort port_;
		GPIOPin pin_;
		GPIO_TypeDef* HALport_p;
	};
	} // END namespace BUtton
	/*BSP::Audio*/
	namespace Audio{
		/**
		 * this software builds heavily on the work by https://community.st.com/people/Beaulier.Francois
		 * Also thanks to https://www.youtube.com/watch?v=O2XaCFsWxSw
		 **/

		/*Defines*/
		constexpr uint32_t MY_BUFFER_SIZE_SAMPLES = 1024;
		constexpr uint32_t MY_DMA_BYTES_PER_FRAME = 8;
		constexpr uint32_t MY_DMA_BYTES_PER_MSIZE = 2;
		constexpr uint32_t MY_DMA_BUFFER_SIZE_BYTES = MY_BUFFER_SIZE_SAMPLES * MY_DMA_BYTES_PER_FRAME;
		constexpr uint32_t MY_DMA_BUFFER_SIZE_MSIZES = MY_DMA_BUFFER_SIZE_BYTES / MY_DMA_BYTES_PER_MSIZE;
		/*BSP::Audio::classAudio*/
		class classAudio{
		public:
			/*Methods*/
			classAudio();
			~classAudio();
			void NullFill(int16_t* buf, uint32_t num_samples);
			void SquareFill(int16_t* buf, uint32_t num_samples);
			void SineFill(int16_t* buf, uint32_t num_samples);
			void RampFill(int16_t* buf, uint32_t num_samples);
			void BufferToDMA(int16_t* sampleBuffer, uint8_t* dmaBuffer, uint32_t numSamples);
			void setVolume(uint8_t _volume);
			void setFrequency(uint32_t _frequency);
			uint8_t getVolume()const;
			uint32_t getFrequency()const;
			void run(void);
			void stop(void)const;
			void setSignalType(SignalType _signalType);
			SignalType getSignalType()const;
		private:
			SignalType signalType;
			uint32_t samplerate;
			uint32_t signalFrequency;
			uint8_t volume;
			int16_t playbackBuffer[MY_BUFFER_SIZE_SAMPLES]{};
			uint8_t saiDMATransmitBuffer[MY_DMA_BUFFER_SIZE_BYTES]{};
		};

	} // END namespace Audio
	/*** User defined datatypes ***/
	/*MainData_t*/
	typedef struct{
		LED::classLED* userLED;
		Button::classButton* userButton;
	}MainData_t;

	/*** Standalone functions ***/
	//extern void SystemClock_Config(void);
	/*BSP::Init(...)*/
	void Init(MainData_t* mainData_);
	/*debug using UART1: https://stackoverflow.com/questions/3530771/passing-variable-arguments-to-another-function-that-accepts-a-variable-argument*/
	template<typename... Args>
	void debug(const char * f, Args... args) {
	  printf(f, args...);
	}
} // END namespace BSP
