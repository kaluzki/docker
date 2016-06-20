# docker build --no-cache -t kaluzki/zend-server:iwat-php54 zend-server/iwat-php54
# docker run --rm -v <app>:/var/www/html -p 80:80 kaluzki/zend-server:iwat-php54
FROM kaluzki/zend-server:php54
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

RUN docker-zs-api extension-off -e 'Zend Debugger' && \
    docker-zs-api extension-on -e xdebug && \
    docker-zs-api extension-on -e memcached && \
    docker-zs-api extension-on -e pcntl && \
    docker-zs-api store-directive -d 'memory_limit' -v '512M' && \
    docker-zs-api store-directive -d 'variables_order' -v 'EGPCS' && \
    docker-zs-api store-directive -d 'max_input_vars' -v '10000' && \
    docker-zs-api store-directive -d 'max_execution_time' -v '300' && \
    docker-zs-api store-directive -d 'output_buffering' -v 'off' && \
    docker-zs-api store-directive -d 'date.timezone' -v 'Europe/Berlin' && \
    docker-zs-api store-directive -d 'session.gc_maxlifetime' -v '43200' && \
    docker-zs-api store-directive -d 'upload_max_filesize' -v '25M' && \
    docker-zs-api store-directive -d 'request_order' -v 'GPC' && \
    docker-zs-api store-directive -d 'zend_optimizerplus.force_restart_timeout' -v 1800 && \
    docker-zs-api store-directive -d 'zend_optimizerplus.memory_consumption' -v 256 && \
    docker-zs-api store-directive -d 'zend_optimizerplus.max_file_size' -v 0 && \
    docker-zs-api store-directive -d 'zend_optimizerplus.max_accelerated_files' -v 4000 && \
    docker-zs-api store-directive -d 'xdebug.remote_enable' -v '1' && \
    docker-zs-api store-directive -d 'xdebug.profiler_enable' -v '0' && \
    docker-zs-api store-directive -d 'xdebug.profiler_enable_trigger' -v '1' && \
    docker-zs-api store-directive -d 'xdebug.show_mem_delta' -v '1' && \
    docker-zs-api store-directive -d 'xdebug.auto_trace' -v '0' && \
    docker-zs-api store-directive -d 'xdebug.trace_enable_trigger' -v '1' && \
    docker-zs-api store-directive -d 'xdebug.trace_format' -v '1' && \
    docker-zs-api store-directive -d 'xdebug.idekey' -v 'PHPSTORM' && \
    docker-zs-api store-directive -d 'xdebug.remote_port' -v '9000' && \
    docker-zs-api store-directive -d 'xdebug.remote_host' -v 'localhost,172.17.42.1' && \
    service zend-server stop