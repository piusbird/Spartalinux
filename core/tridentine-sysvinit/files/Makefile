ETCDIR=${DESTDIR}/etc
LIBDIR=${DESTDIR}/lib
SERVICEDIR=${LIBDIR}/services
MAN8=${DESTDIR}/usr/share/man/man8
SBIN=${DESTDIR}/sbin
MODE=754
DIRMODE=755
CONFMODE=644

all: files

install: all

create-dirs:
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc0.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc1.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc2.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc3.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc4.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc5.d
	install -d -m ${DIRMODE}  ${ETCDIR}/rc.d/rc6.d
	install -d -m ${DIRMODE}  ${ETCDIR}/init.d

files:
	install -m ${CONFMODE} inittab ${ETCDIR}/inittab	
	install -m ${CONFMODE} rc.subr ${ETCDIR}/rc.d
	install -m ${MODE} rc.S ${ETCDIR}/rc.d/
	
	install -m ${MODE} rc.S ${ETCDIR}/rc.d/
	install -m ${MODE} rc.M ${ETCDIR}/rc.d/
	install -m ${MODE} rc.4 ${ETCDIR}/rc.d/
	install -m ${MODE} rc.K ${ETCDIR}/rc.d/
	install -m ${MODE} rc.6 ${ETCDIR}/rc.d/
	install -m ${MODE} rc.udev ${ETCDIR}/rc.d/
	install -m ${MODE} rc.loop ${ETCDIR}/rc.d/
	install -m ${MODE} rc.local ${ETCDIR}/rc.d/
	install -m ${MODE} rc.sysvinit ${ETCDIR}/rc.d/
