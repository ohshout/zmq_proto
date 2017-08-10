CC = gcc
CFLAGS = -std=gnu99

SRCS = src/dzmq/dzmq.c src/dzmq/impl/adv_msg.c src/dzmq/impl/guid.c src/dzmq/impl/header.c src/dzmq/impl/ip.c src/dzmq/impl/topic.c src/dzmq/impl/timing.c src/dzmq/impl/connection.c
LIBRARIES = -lzmq -luuid

all:
	mkdir -p bin
	${CC} ${CFLAGS} -o bin/talker src/talker.c ${SRCS} ${LIBRARIES} -g
	${CC} ${CFLAGS} -o bin/listener src/listener.c ${SRCS} ${LIBRARIES} -g
	${CC} ${CFLAGS} -o bin/lonely src/lonely.c ${SRCS} ${LIBRARIES} -g

clean:
	rm -rf bin
