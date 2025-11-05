from src.hello import greet

def test_greet():
    result = greet("World")
    assert result == "Hello, World!"
