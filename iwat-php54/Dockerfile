FROM kaluzki/php54
MAINTAINER Kaluzki Demjan <kaluzkidemjan@gmail.com>

COPY app.zpk /tmp/
RUN service zend-server start && \
    ZS="/usr/local/zend/bin/zs-manage" && \
    ZS_PASSWD="admin" && \
    ZS_KEY=$($ZS bootstrap-single-server -p $ZS_PASSWD -a TRUE | cut -s -f 2) && \
    $ZS config-apply-changes -N $ZS_PASSWD -K $ZS_KEY -s 0 && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS extension-on -N $ZS_PASSWD -K $ZS_KEY -e memcached && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS extension-on -N $ZS_PASSWD -K $ZS_KEY -e pcntl && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'memory_limit' -v '512M' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'variables_order' -v 'EGPCS' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'max_input_vars' -v '10000' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'max_execution_time' -v '300' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'output_buffering' -v 'off' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'date.timezone' -v 'Europe/Berlin' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'session.gc_maxlifetime' -v '43200' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'upload_max_filesize' -v '25M' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d 'request_order' -v 'GPC' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d zend_optimizerplus.force_restart_timeout -v 1800 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d zend_optimizerplus.memory_consumption -v 256 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d zend_optimizerplus.max_file_size -v 0 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d zend_optimizerplus.max_accelerated_files -v 4000 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.remote_enable -v 1 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.profiler_enable -v 0 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.profiler_enable_trigger -v 1 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.show_mem_delta -v 1 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.auto_trace -v 0 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.trace_enable_trigger -v 1 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.trace_format -v 1 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.idekey -v PHPSTORM && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS store-directive -N $ZS_PASSWD -K $ZS_KEY -d xdebug.remote_port -v 9000 && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \

    echo "zend_extension=/usr/local/zend/lib/php_extensions/xdebug.so"|cat - /usr/local/zend/etc/conf.d/zend_extension_manager.ini > /tmp/out && mv /tmp/out /usr/local/zend/etc/conf.d/zend_extension_manager.ini && \
    sed -e '/zend_extension_manager/ s/^;*/;/' -i /usr/local/zend/etc/conf.d/debugger.ini && \
    $ZS extension-on -N $ZS_PASSWD -K $ZS_KEY -e xdebug && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \
    $ZS extension-off -N $ZS_PASSWD -K $ZS_KEY -e 'Zend Debugger' && sleep 5s && \
    $ZS restart -N $ZS_PASSWD -K $ZS_KEY && \


    $ZS app-deploy -N $ZS_PASSWD -K $ZS_KEY -d TRUE -p /tmp/app.zpk -b / && \
    service zend-server stop && \
    echo "The server key is $ZS_KEY"
