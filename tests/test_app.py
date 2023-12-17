import pytest
from src.app import app


@pytest.fixture()
def client(app=app):
    return app.test_client()


def test_main(client):
    r = client.get("/")
    assert b"Interface" in r.data
