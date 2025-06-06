def test_mysql_is_running(host):
    assert host.service("mysql").is_running

def test_mysql_listens_on_port(host):
    assert host.socket("tcp://0.0.0.0:3306").is_listening

def test_root_user_exists(host):
    import os
    root_pass = os.environ.get('MYSQL_ROOT_PASSWORD', 'secure_root_password')
    cmd = host.run(f"mysql -u root -p{root_pass} -e 'SELECT 1;'")
    assert cmd.rc == 0
