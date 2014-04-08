#CC = arm-none-linux-gnueabi-gcc
CC = arm-linux-gnueabihf-gcc
#CPP = arm-none-linux-gnueabi-g++
CPP = arm-linux-gnueabihf-g++
STRIP = arm-none-linux-gnueabi-strip
AR = arm-none-linux-gnueabi-ar
CEDARX_CHIP_VERSION = A20

TARGET=encodeDemo
BUILDPATH=.

SRCDIRS:=.
			
CFLAGS =-Wall -O0 -g -ldl 

INCLUDES:=$(foreach dir,$(SRCDIRS),-I$(dir)) \
	-I../include \
	-I../lib \
	-I../include/include_system \
	-I../include/include_vencoder \
	-I../include/include_camera \
	-I../include/include_platform/CHIP_$(CEDARX_CHIP_VERSION)/disp \
	-I../include/include_platform/CHIP_$(CEDARX_CHIP_VERSION)

SRCCS=$(foreach dir,$(SRCDIRS),$(wildcard $(dir)/*.c))

LIBOBJ=$(addprefix $(BUILDPATH)/, $(addsuffix .o, $(basename $(SRCCS)))) 

LDFLAGS=-lpthread -lvencoder  -ldl -L../lib/$(CEDARX_CHIP_VERSION)

all: $(TARGET)

$(BUILDPATH)/%.o:%.c
	$(CC) $(CFLAGS) ${INCLUDES} -o $@ -c $<
		    
$(TARGET):$(LIBOBJ)
	$(CPP) $(LDFLAGS) -o $@ $^ 

clean:
	rm -f $(TARGET) $(LIBOBJ)

