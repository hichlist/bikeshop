def test_main_available(client):
    url = client.get('/')
    assert url.status_code == 200