FROM centos:6

MAINTAINER Linkeer8802 <362221946@qq.com>

ARG TFS_VERSION=2.2.16
ARG TFS_HOME=/usr/local/tfs
ARG GCC_URL=http://mirrors.ustc.edu.cn/gnu/gcc/gcc-4.1.2/gcc-4.1.2.tar.bz2

ENV TBLIB_ROOT /usr/local/tb_lib

RUN mkdir -p $TFS_HOME

# install depends libs
RUN set -x && yum install -y wget bzip2 subversion
RUN set -x && yum install -y libuuid-devel zlib-devel mysql-devel
RUN set -x && yum install -y gcc gcc-c++ automake autoconf libtool make
RUN set -x && yum install -y texinfo glibc-devel.i686 readline-devel.x86_64

# install gcc-4.1.2
RUN set -x && cd /usr/local/src && wget $GCC_URL && tar -xvf gcc-4.1.2.tar.bz2 \
           && cd gcc-4.1.2 \
           && ./configure --prefix=/usr/local/gcc --enable-languages=c,c++ && make -j8 && make install
RUN set -x && mv /usr/bin/gcc /usr/bin/gcc.bak && mv /usr/bin/g++ /usr/bin/g++.bak \
           && ln -s /usr/local/gcc/bin/gcc /usr/bin/gcc && ln -s /usr/local/gcc/bin/g++ /usr/bin/g++

#download code
RUN set -x && cd /usr/local/src \
           && svn co -r 18 http://code.taobao.org/svn/tb-common-utils/trunk tb-common-utils \
           && svn co http://code.taobao.org/svn/tfs/tags/release-$TFS_VERSION tfs-$TFS_VERSION

# install tb-common-utils
RUN set -x && cd /usr/local/src/tb-common-utils \
           && chmod +x ./build.sh \
           && ./build.sh

# install jemalloc
RUN set -x && cd /usr/local/src \
	   && wget https://github.com/jemalloc/jemalloc/releases/download/4.2.1/jemalloc-4.2.1.tar.bz2 \
	   && tar -xvf jemalloc-4.2.1.tar.bz2 \
	   && cd jemalloc-4.2.1 && ./autogen.sh && make && make install

# install tfs
RUN set -x && cd /usr/local/src/tfs-$TFS_VERSION \
           && ./build.sh init \
           && ./configure --prefix=/usr/local/tfs --without-tcmalloc --with-release \
           && make && make install

RUN set -x && rm -rf /usr/local/src/*

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

WORKDIR $TFS_HOME

EXPOSE 8100 8200 8201 7200 7300
CMD ["/bin/bash"]
