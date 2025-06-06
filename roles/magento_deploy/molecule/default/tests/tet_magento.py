def test_nginx_is_running(host):
    assert host.service("nginx").is_running

def test_php_fpm_is_running(host):
    assert host.service("php-fpm").is_running

def test_http_port_is_open(host):
    assert host.socket("tcp://0.0.0.0:80").is_listening

def test_magento_index_page(host):
    cmd = host.run("curl -s http://localhost/")
    assert "Magento" in cmd.stdout
