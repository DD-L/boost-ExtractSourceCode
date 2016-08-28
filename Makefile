RM = rm -rf
PWD = $(shell pwd)

#BOOST_PACKAGE = asserts/boost_1_57_0.7z
BOOST_SRC = $(PWD)/boost/boost_1_57_0


.PHONY : all
all: boost

.PHONY : boost
boost:
	dos2unix ./boost_init.sh > /dev/null 2>&1
	sh ./boost_init.sh

.PHONY : boost.force
boost.force:
	dos2unix ./boost_init.sh > /dev/null 2>&1
	sh ./boost_init.sh -force

.PHONY : clean
clean: boost.clean

.PHONY : boost.clean
boost.clean:
	$(RM) $(BOOST_SRC)




