VERSION = 3
PATCHLEVEL = 10

lastword = $(word $(words $(1)),$(1))
makedir := $(dir $(call lastword,$(MAKEFILE_LIST)))

ifeq ("$(origin V)", "command line")
VERBOSE := $(V)
endif
ifneq ($(VERBOSE),1)
Q := @
endif

#MAKEARGS := -C /home/dev/los13/kernel/Coolpad/msm8916
MAKEARGS += O=$(if $(patsubst /%,,$(makedir)),$(CURDIR)/)$(patsubst %/,%,$(makedir))

MAKEFLAGS += --no-print-directory

.PHONY: all $(MAKECMDGOALS)

all	:= $(filter-out all Makefile,$(MAKECMDGOALS))

all:
	$(Q)$(MAKE) $(MAKEARGS) $(all)

Makefile:;

$(all): all
	@:

%/: all
	@:
