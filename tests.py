import requests


def test_runserver():
    response = requests.get("http://localhost:5000")
    assert response.text in ["✊", "✌️", "🖐"]
